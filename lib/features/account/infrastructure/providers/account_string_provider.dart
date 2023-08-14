import 'package:injectable/injectable.dart';

import '../../application/providers/account_string_provider.dart';

@LazySingleton(as: AccountStringProvider)
class ProdAccountStringProvider implements AccountStringProvider {
  const ProdAccountStringProvider();

  @override
  String get cannotLoad => 'Не удалось загрузить информацию о пользователе';
}
