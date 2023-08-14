import '../../../home/application/view_models/event_vm.dart';

class TicketVM {
  const TicketVM({
    required this.id,
    required this.role,
    required this.event,
  });

  final String id;
  final String role;
  final EventVM event;
}
