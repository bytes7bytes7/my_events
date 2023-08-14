import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/extensions/extensions.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/blocs/upcoming_events/upcoming_events_bloc.dart';

class UpcomingEventsSlider extends StatelessWidget {
  const UpcomingEventsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.instance.get<UpcomingEventsBloc>()
        ..add(const UpcomingEventsEvent.load()),
      child: const _Body(),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final elevatedButtonTX = theme.extension<ElevatedButtonTX>()!;
    final pageController = usePageController(
      viewportFraction: 0.9,
    );
    final bloc = context.read<UpcomingEventsBloc>();

    return BlocBuilder<UpcomingEventsBloc, UpcomingEventsState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: state.events.length,
                onPageChanged: (index) {
                  bloc.add(UpcomingEventsEvent.pageChanged(index: index));
                },
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  final event = state.events[index];

                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 6,
                    ),
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Image.memory(
                            event.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: ElevatedButton(
                                  style: elevatedButtonTX.fivefold,
                                  onPressed: () {},
                                  child: Assets.icons.share.svg(),
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.memory(event.icon),
                              const SizedBox(
                                height: 16,
                              ),
                              Text(
                                '${event.period} | ${event.place}',
                                style: theme.textTheme.labelLarge,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                event.title,
                                style: theme.textTheme.displaySmall,
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                event.city,
                                style: theme.textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            DotIndicator(
              currentIndex: state.currentIndex,
              amount: state.events.length,
              selectedColor: theme.colorScheme.onSurface,
            ),
          ],
        );
      },
    );
  }
}
