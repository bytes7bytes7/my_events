import '../entities/ticket.dart';

abstract class TicketRepository {
  const TicketRepository();

  Future<List<Ticket>> getMy({
    required int offset,
    required int limit,
  });

  Future<List<Ticket>> getArchived({
    required int offset,
    required int limit,
  });
}
