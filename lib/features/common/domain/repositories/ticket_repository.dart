import '../../../../utils/paginated.dart';
import '../entities/ticket.dart';

abstract class TicketRepository {
  const TicketRepository();

  Future<Paginated<List<Ticket>>> getMy({
    required int offset,
    required int limit,
  });

  Future<Paginated<List<Ticket>>> getArchived({
    required int offset,
    required int limit,
  });
}
