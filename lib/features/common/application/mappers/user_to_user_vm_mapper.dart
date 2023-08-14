import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../domain/entities/user.dart';
import '../view_models/user_vm.dart';

@LazySingleton(as: Mapper<User, UserVM>)
class UserToUserVMMapper extends Mapper<User, UserVM> {
  const UserToUserVMMapper();

  @override
  UserVM map(User item) {
    return UserVM(
      id: item.id,
      firstName: item.firstName,
      lastName: item.lastName,
      middleName: item.middleName,
      avatar: item.avatar,
    );
  }
}
