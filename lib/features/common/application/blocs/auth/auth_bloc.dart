import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/domain.dart';
import '../../coordinators/auth_coordinator.dart';
import '../../providers/auth_string_provider.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(
    this._authService,
    this._authStringProvider,
    this._coordinator,
  ) : super(const AuthState()) {
    on<_CheckIfIsLoggedInEvent>(_checkIfIsLoggedIn);
    on<_LogInToAccountEvent>(_logInToAccount);
    on<_LogInAnonymouslyEvent>(_logInAnonymously);

    // private
    on<_LoggedInEvent>(_onLoggedIn);
    on<_LoggedOutEvent>(_onLoggedOut);

    _eventSub = _authService.events.listen((event) {
      if (event is UserLoggedInDomainEvent) {
        add(const _LoggedInEvent());
      } else if (event is UserLoggedOutDomainEvent) {
        add(const _LoggedOutEvent());
      }
    });
  }

  final AuthService _authService;
  final AuthStringProvider _authStringProvider;
  final AuthCoordinator _coordinator;
  StreamSubscription? _eventSub;

  @override
  Future<void> close() async {
    await _eventSub?.cancel();

    await super.close();
  }

  Future<void> _checkIfIsLoggedIn(
    _CheckIfIsLoggedInEvent event,
    Emitter<AuthState> emit,
  ) async {
    await _authService.checkIfIsLoggedIn();
  }

  Future<void> _logInToAccount(
    _LogInToAccountEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (state.isLoading) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    try {
      await _authService.logInToAccount();
    } catch (e) {
      emit(state.copyWith(error: _authStringProvider.cannotLogIn));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _logInAnonymously(
    _LogInAnonymouslyEvent event,
    Emitter<AuthState> emit,
  ) async {
    if (state.isLoading) {
      return;
    }

    emit(state.copyWith(isLoading: true));

    try {
      await _authService.logInAnonymously();
    } catch (e) {
      emit(state.copyWith(error: _authStringProvider.cannotLogIn));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  void _onLoggedIn(
    _LoggedInEvent event,
    Emitter<AuthState> emit,
  ) {
    _coordinator.onLoggedIn();
  }

  void _onLoggedOut(
    _LoggedOutEvent event,
    Emitter<AuthState> emit,
  ) {
    _coordinator.onLoggedOut();
  }
}
