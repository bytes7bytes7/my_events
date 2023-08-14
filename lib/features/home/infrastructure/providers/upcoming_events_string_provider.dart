import 'package:injectable/injectable.dart';

import '../../application/providers/upcoming_events_string_provider.dart';

@LazySingleton(as: UpcomingEventsStringProvider)
class ProdUpcomingEventsStringProvider implements UpcomingEventsStringProvider {
  const ProdUpcomingEventsStringProvider();

  @override
  String get cannotLoad => 'Не удалось загрузить ближайшие события';
}
