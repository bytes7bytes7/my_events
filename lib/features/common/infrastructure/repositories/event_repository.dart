import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../gen/assets.gen.dart';
import '../../domain/entities/event.dart';
import '../../domain/repositories/event_repository.dart';

@LazySingleton(as: EventRepository)
class TestEventRepository implements EventRepository {
  const TestEventRepository();

  @override
  Future<List<Event>> getUpcomingEvents() async {
    return Future.delayed(const Duration(milliseconds: 800), () async {
      return [
        Event(
          id: '1',
          title: 'Восточный экономический форум 2023',
          place: 'Владивосток, Россия',
          startsAt: DateTime(2023, 9, 5),
          endsAt: DateTime(2023, 9, 8),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.eventCardBg1.path),
          ),
          icon: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.icons.eventCardIcon1),
          ),
        ),
      ];
    });
  }
}
