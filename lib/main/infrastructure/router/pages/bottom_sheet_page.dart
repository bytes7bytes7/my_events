import 'package:flutter/material.dart';

class BottomSheetPage<T> extends Page<T> {
  const BottomSheetPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Route<T> createRoute(BuildContext context) {
    return ModalBottomSheetRoute<T>(
      isScrollControlled: true,
      settings: this,
      builder: (context) {
        return DraggableScrollableSheet(
          builder: (context, controller) {
            return child;
          },
        );
      },
    );
  }
}
