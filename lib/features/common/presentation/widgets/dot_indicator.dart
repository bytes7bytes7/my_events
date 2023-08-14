import 'package:flutter/material.dart';

const _spacing = 3.0;
const _size = 8.0;

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.currentIndex,
    required this.amount,
  });

  final int currentIndex;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          amount,
          (index) {
            if (currentIndex == index) {
              return const _SelectedDot();
            }

            return const _UnselectedDot();
          },
        ),
      ),
    );
  }
}

class _UnselectedDot extends StatelessWidget {
  const _UnselectedDot();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _spacing,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: theme.colorScheme.secondary,
        ),
        child: const SizedBox.square(
          dimension: _size,
        ),
      ),
    );
  }
}

class _SelectedDot extends StatelessWidget {
  const _SelectedDot();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _spacing,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: theme.colorScheme.primary,
        ),
        child: const SizedBox(
          height: _size,
          width: _size * 2,
        ),
      ),
    );
  }
}
