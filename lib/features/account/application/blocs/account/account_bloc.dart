import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../utils/mapper.dart';
import '../../../../common/application/view_models/user_vm.dart';
import '../../../../common/domain/entities/user.dart';
import '../../../../common/domain/repositories/user_repository.dart';
import '../../providers/account_string_provider.dart';

part 'account_event.dart';

part 'account_state.dart';

part 'account_bloc.freezed.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(
    this._userRepository,
    this._stringProvider,
    this._userMapper,
  ) : super(const AccountState()) {
    on<_LoadUserEvent>(_loadUser);
  }

  final UserRepository _userRepository;
  final AccountStringProvider _stringProvider;
  final Mapper<User, UserVM> _userMapper;

  Future<void> _loadUser(
    _LoadUserEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    try {
      final user = await _userRepository.getCurrent();

      final userVM = _userMapper.map(user);

      emit(state.copyWith(user: userVM));
    } catch (e) {
      emit(state.copyWith(error: _stringProvider.cannotLoad));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}