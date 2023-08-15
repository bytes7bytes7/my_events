import 'package:injectable/injectable.dart';

import '../../../../utils/paginated.dart';
import '../../domain/entities/ticket.dart';
import '../../domain/repositories/ticket_repository.dart';

@LazySingleton(as: TicketRepository)
class TestTicketRepository implements TicketRepository {
  const TestTicketRepository();

  @override
  Future<Paginated<List<Ticket>>> getArchived({
    required int offset,
    required int limit,
  }) {
    return Future.delayed(const Duration(milliseconds: 800), () {
      if (offset != 0) {
        return Paginated(
          value: [],
          offset: offset,
          count: 0,
          totalCount: 1,
        );
      }

      return const Paginated(
        offset: 0,
        count: 1,
        totalCount: 1,
        value: [
          Ticket(
            id: '1',
            role: 'дирекция и тех персонал',
            eventID: '4',
          ),
        ],
      );
    });
  }

  @override
  Future<Paginated<List<Ticket>>> getMy({
    required int offset,
    required int limit,
  }) {
    return Future.delayed(const Duration(milliseconds: 800), () {
      if (offset != 0) {
        return Paginated(
          value: [],
          offset: offset,
          count: 0,
          totalCount: 2,
        );
      }

      return const Paginated(
        offset: 0,
        count: 1,
        totalCount: 1,
        value: [
          Ticket(
            id: '2',
            role: 'дирекция и тех персонал',
            eventID: '5',
          ),
          Ticket(
            id: '3',
            role: 'дирекция и тех персонал',
            eventID: '6',
          ),
        ],
      );
    });
  }
}
