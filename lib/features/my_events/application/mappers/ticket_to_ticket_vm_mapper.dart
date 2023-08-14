import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../../common/application/view_models/ticket_vm.dart';
import '../../../common/domain/entities/ticket.dart';

@LazySingleton(as: Mapper<Ticket, TicketVM>)
class TicketToTicketVMMapper extends Mapper<Ticket, TicketVM> {
  const TicketToTicketVMMapper();

  @override
  TicketVM map(Ticket item) {
    return TicketVM(
      id: item.id,
      role: item.role,
      eventID: item.eventID,
    );
  }
}
