import 'package:injectable/injectable.dart';

import '../../application/providers/my_events_string_provider.dart';

@LazySingleton(as: MyEventsStringProvider)
class ProdMyEventsStringProvider implements MyEventsStringProvider {
  const ProdMyEventsStringProvider();

  @override
  String get cannotLoad => 'Не удалось загрузить события';
}
