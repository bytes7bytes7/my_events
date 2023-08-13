import '../entities/event.dart';

abstract class EventRepository {
  const EventRepository();

  Future<List<Event>> getUpcomingEvents();
}
