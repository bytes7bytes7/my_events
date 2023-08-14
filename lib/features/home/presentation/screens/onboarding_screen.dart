import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../../../../themes/extensions/extensions.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/blocs/onboarding/onboarding_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldMsg = ScaffoldMessenger.of(context);

    return Scaffold(
      body: BlocProvider(
        create: (context) => GetIt.instance.get<OnboardingBloc>()
          ..add(const OnboardingEvent.load()),
        child: BlocConsumer<OnboardingBloc, OnboardingState>(
          listener: (context, state) {
            if (state.error.isNotEmpty) {
              scaffoldMsg.showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state.tips.isEmpty) {
              if (state.isLoading) {
                return const LoadingOverlay();
              }

              return const Text('Нет данных');
            }

            return Stack(
              children: [
                const _Background(),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: _Body(),
                ),
                if (state.isLoading) const LoadingOverlay(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _Background extends HookWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pageController = usePageController();

    return BlocConsumer<OnboardingBloc, OnboardingState>(
      listener: (context, state) {
        if (state.currentIndex != pageController.page?.toInt()) {
          pageController.animateToPage(
            state.currentIndex,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeIn,
          );
        }
      },
      builder: (context, state) {
        return PageView.builder(
          controller: pageController,
          itemCount: state.tips.length,
          itemBuilder: (context, index) {
            return DecoratedBox(
              position: DecorationPosition.foreground,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    theme.colorScheme.onBackground,
                    theme.colorScheme.onBackground.withOpacity(0.1),
                    theme.colorScheme.onBackground.withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Image.memory(
                state.tips[index].image,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OnboardingBloc>();
    final theme = Theme.of(context);
    final elevatedButtonTX = theme.extension<ElevatedButtonTX>()!;

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        final tip = state.tips[state.currentIndex];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (!state.isLastIndex)
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style: elevatedButtonTX.tertiary,
                    onPressed: () {
                      bloc.add(const OnboardingEvent.close());
                    },
                    child: const Text('Пропустить'),
                  ),
                ),
              ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: Text(
                tip.title,
                style: theme.textTheme.displayMedium,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                tip.description,
                style: theme.textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                bloc.add(const OnboardingEvent.next());
              },
              child: Text(
                state.isLastIndex ? 'Начать работу' : 'Далее',
              ),
            ),
          ],
        );
      },
    );
  }
}
