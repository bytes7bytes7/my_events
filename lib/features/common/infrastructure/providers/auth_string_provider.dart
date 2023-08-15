import 'package:injectable/injectable.dart';

import '../../application/providers/auth_string_provider.dart';

@LazySingleton(as: AuthStringProvider)
class ProdAuthStringProvider implements AuthStringProvider {
  const ProdAuthStringProvider();

  @override
  String get cannotLogIn => 'Не удалось войти';

  @override
  String get cannotLogOut => 'Не удалось выйти';
}
