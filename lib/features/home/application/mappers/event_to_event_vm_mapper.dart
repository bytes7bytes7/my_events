import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../../common/application/providers/date_time_beautify_provider.dart';
import '../../../common/domain/entities/event.dart';
import '../view_models/event_vm.dart';

@LazySingleton(as: Mapper<Event, EventVM>)
class EventToEventVMMapper extends Mapper<Event, EventVM> {
  const EventToEventVMMapper(this._dateTimeBeautifyProvider);

  final DateTimeBeautifyProvider _dateTimeBeautifyProvider;

  @override
  EventVM map(Event item) {
    return EventVM(
      id: item.id,
      title: item.title,
      place: item.place,
      period: _dateTimeBeautifyProvider.range(item.startsAt, item.endsAt),
      image: item.image,
      icon: item.icon,
    );
  }
}
