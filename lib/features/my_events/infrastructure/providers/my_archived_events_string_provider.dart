import 'package:injectable/injectable.dart';

import '../../application/providers/my_archived_events_string_provider.dart';

@LazySingleton(as: MyArchivedEventsStringProvider)
class ProdMyArchivedEventsStringProvider
    implements MyArchivedEventsStringProvider {
  const ProdMyArchivedEventsStringProvider();

  @override
  String get cannotLoad => 'Не удалось загрузить события';
}
