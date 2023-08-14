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
          city: 'Владивосток, Россия',
          place: 'ДФУ',
          startsAt: DateTime(2023, 9, 5),
          endsAt: DateTime(2023, 9, 8),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.eventCardBg1.path),
          ),
          icon: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.icons.eventCardIcon1.path),
          ),
        ),
        Event(
          id: '2',
          title: 'Петербургский международный юридический форум 2023',
          city: 'Санкт-Петербург, Россия',
          place: 'Экспофорум',
          startsAt: DateTime(2024, 5, 11),
          endsAt: DateTime(2024, 5, 13),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.eventCardBg2.path),
          ),
          icon: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.icons.eventCardIcon2.path),
          ),
        ),
        Event(
          id: '2',
          title: 'Санкт-Петербургский международный экономический форум 2023',
          city: 'Санкт-Петербург, Россия',
          place: 'Экспофорум',
          startsAt: DateTime(2024, 6, 14),
          endsAt: DateTime(2024, 6, 17),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.eventCardBg3.path),
          ),
          icon: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.icons.eventCardIcon3.path),
          ),
        ),
      ];
    });
  }

  @override
  Future<Event> getByID(String id) async {
    await Future.delayed(const Duration(milliseconds: 800));

    if (id == '4') {
      return Event(
        id: '4',
        title: 'Петербургский юридический форум',
        city: 'Санкт-Петербург, Россия',
        place: 'Экспофорум',
        startsAt: DateTime(2023, 2, 18),
        endsAt: DateTime(2023, 2, 23),
        image: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.images.eventCardBg3.path),
        ),
        icon: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.icons.eventCardIcon3.path),
        ),
      );
    }

    if (id == '5') {
      return Event(
        id: '5',
        title: 'Петербургский международный экономический форум',
        city: 'Санкт-Петербург, Россия',
        place: 'Экспофорум',
        startsAt: DateTime(2023, 2, 18),
        endsAt: DateTime(2023, 2, 23),
        image: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.images.eventCardBg3.path),
        ),
        icon: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.icons.eventCardIcon3.path),
        ),
      );
    }

    if (id == '6') {
      return Event(
        id: '6',
        title: 'Восточный экономический форум',
        city: 'Санкт-Петербург, Россия',
        place: 'Экспофорум',
        startsAt: DateTime(2023, 2, 18),
        endsAt: DateTime(2023, 2, 23),
        image: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.images.eventCardBg3.path),
        ),
        icon: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.icons.eventCardIcon3.path),
        ),
      );
    }

    throw Exception('Event not found');
  }
}
