// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfIsLoggedIn,
    required TResult Function() logInToAccount,
    required TResult Function() logInAnonymously,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfIsLoggedIn,
    TResult? Function()? logInToAccount,
    TResult? Function()? logInAnonymously,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfIsLoggedIn,
    TResult Function()? logInToAccount,
    TResult Function()? logInAnonymously,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfIsLoggedInEvent value) checkIfIsLoggedIn,
    required TResult Function(_LogInToAccountEvent value) logInToAccount,
    required TResult Function(_LogInAnonymouslyEvent value) logInAnonymously,
    required TResult Function(_LogOutEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult? Function(_LogInToAccountEvent value)? logInToAccount,
    TResult? Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult? Function(_LogOutEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult Function(_LogInToAccountEvent value)? logInToAccount,
    TResult Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckIfIsLoggedInEventCopyWith<$Res> {
  factory _$$_CheckIfIsLoggedInEventCopyWith(_$_CheckIfIsLoggedInEvent value,
          $Res Function(_$_CheckIfIsLoggedInEvent) then) =
      __$$_CheckIfIsLoggedInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckIfIsLoggedInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckIfIsLoggedInEvent>
    implements _$$_CheckIfIsLoggedInEventCopyWith<$Res> {
  __$$_CheckIfIsLoggedInEventCopyWithImpl(_$_CheckIfIsLoggedInEvent _value,
      $Res Function(_$_CheckIfIsLoggedInEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckIfIsLoggedInEvent extends _CheckIfIsLoggedInEvent {
  const _$_CheckIfIsLoggedInEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.checkIfIsLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckIfIsLoggedInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfIsLoggedIn,
    required TResult Function() logInToAccount,
    required TResult Function() logInAnonymously,
    required TResult Function() logOut,
  }) {
    return checkIfIsLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfIsLoggedIn,
    TResult? Function()? logInToAccount,
    TResult? Function()? logInAnonymously,
    TResult? Function()? logOut,
  }) {
    return checkIfIsLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfIsLoggedIn,
    TResult Function()? logInToAccount,
    TResult Function()? logInAnonymously,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (checkIfIsLoggedIn != null) {
      return checkIfIsLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfIsLoggedInEvent value) checkIfIsLoggedIn,
    required TResult Function(_LogInToAccountEvent value) logInToAccount,
    required TResult Function(_LogInAnonymouslyEvent value) logInAnonymously,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return checkIfIsLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult? Function(_LogInToAccountEvent value)? logInToAccount,
    TResult? Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return checkIfIsLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult Function(_LogInToAccountEvent value)? logInToAccount,
    TResult Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (checkIfIsLoggedIn != null) {
      return checkIfIsLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _CheckIfIsLoggedInEvent extends AuthEvent {
  const factory _CheckIfIsLoggedInEvent() = _$_CheckIfIsLoggedInEvent;
  const _CheckIfIsLoggedInEvent._() : super._();
}

/// @nodoc
abstract class _$$_LogInToAccountEventCopyWith<$Res> {
  factory _$$_LogInToAccountEventCopyWith(_$_LogInToAccountEvent value,
          $Res Function(_$_LogInToAccountEvent) then) =
      __$$_LogInToAccountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogInToAccountEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogInToAccountEvent>
    implements _$$_LogInToAccountEventCopyWith<$Res> {
  __$$_LogInToAccountEventCopyWithImpl(_$_LogInToAccountEvent _value,
      $Res Function(_$_LogInToAccountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogInToAccountEvent extends _LogInToAccountEvent {
  const _$_LogInToAccountEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.logInToAccount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogInToAccountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfIsLoggedIn,
    required TResult Function() logInToAccount,
    required TResult Function() logInAnonymously,
    required TResult Function() logOut,
  }) {
    return logInToAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfIsLoggedIn,
    TResult? Function()? logInToAccount,
    TResult? Function()? logInAnonymously,
    TResult? Function()? logOut,
  }) {
    return logInToAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfIsLoggedIn,
    TResult Function()? logInToAccount,
    TResult Function()? logInAnonymously,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logInToAccount != null) {
      return logInToAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfIsLoggedInEvent value) checkIfIsLoggedIn,
    required TResult Function(_LogInToAccountEvent value) logInToAccount,
    required TResult Function(_LogInAnonymouslyEvent value) logInAnonymously,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return logInToAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult? Function(_LogInToAccountEvent value)? logInToAccount,
    TResult? Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return logInToAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult Function(_LogInToAccountEvent value)? logInToAccount,
    TResult Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logInToAccount != null) {
      return logInToAccount(this);
    }
    return orElse();
  }
}

abstract class _LogInToAccountEvent extends AuthEvent {
  const factory _LogInToAccountEvent() = _$_LogInToAccountEvent;
  const _LogInToAccountEvent._() : super._();
}

/// @nodoc
abstract class _$$_LogInAnonymouslyEventCopyWith<$Res> {
  factory _$$_LogInAnonymouslyEventCopyWith(_$_LogInAnonymouslyEvent value,
          $Res Function(_$_LogInAnonymouslyEvent) then) =
      __$$_LogInAnonymouslyEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogInAnonymouslyEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogInAnonymouslyEvent>
    implements _$$_LogInAnonymouslyEventCopyWith<$Res> {
  __$$_LogInAnonymouslyEventCopyWithImpl(_$_LogInAnonymouslyEvent _value,
      $Res Function(_$_LogInAnonymouslyEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogInAnonymouslyEvent extends _LogInAnonymouslyEvent {
  const _$_LogInAnonymouslyEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.logInAnonymously()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogInAnonymouslyEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfIsLoggedIn,
    required TResult Function() logInToAccount,
    required TResult Function() logInAnonymously,
    required TResult Function() logOut,
  }) {
    return logInAnonymously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfIsLoggedIn,
    TResult? Function()? logInToAccount,
    TResult? Function()? logInAnonymously,
    TResult? Function()? logOut,
  }) {
    return logInAnonymously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfIsLoggedIn,
    TResult Function()? logInToAccount,
    TResult Function()? logInAnonymously,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logInAnonymously != null) {
      return logInAnonymously();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfIsLoggedInEvent value) checkIfIsLoggedIn,
    required TResult Function(_LogInToAccountEvent value) logInToAccount,
    required TResult Function(_LogInAnonymouslyEvent value) logInAnonymously,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return logInAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult? Function(_LogInToAccountEvent value)? logInToAccount,
    TResult? Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return logInAnonymously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult Function(_LogInToAccountEvent value)? logInToAccount,
    TResult Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logInAnonymously != null) {
      return logInAnonymously(this);
    }
    return orElse();
  }
}

abstract class _LogInAnonymouslyEvent extends AuthEvent {
  const factory _LogInAnonymouslyEvent() = _$_LogInAnonymouslyEvent;
  const _LogInAnonymouslyEvent._() : super._();
}

/// @nodoc
abstract class _$$_LogOutEventCopyWith<$Res> {
  factory _$$_LogOutEventCopyWith(
          _$_LogOutEvent value, $Res Function(_$_LogOutEvent) then) =
      __$$_LogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogOutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogOutEvent>
    implements _$$_LogOutEventCopyWith<$Res> {
  __$$_LogOutEventCopyWithImpl(
      _$_LogOutEvent _value, $Res Function(_$_LogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogOutEvent extends _LogOutEvent {
  const _$_LogOutEvent() : super._();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkIfIsLoggedIn,
    required TResult Function() logInToAccount,
    required TResult Function() logInAnonymously,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkIfIsLoggedIn,
    TResult? Function()? logInToAccount,
    TResult? Function()? logInAnonymously,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkIfIsLoggedIn,
    TResult Function()? logInToAccount,
    TResult Function()? logInAnonymously,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckIfIsLoggedInEvent value) checkIfIsLoggedIn,
    required TResult Function(_LogInToAccountEvent value) logInToAccount,
    required TResult Function(_LogInAnonymouslyEvent value) logInAnonymously,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult? Function(_LogInToAccountEvent value)? logInToAccount,
    TResult? Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckIfIsLoggedInEvent value)? checkIfIsLoggedIn,
    TResult Function(_LogInToAccountEvent value)? logInToAccount,
    TResult Function(_LogInAnonymouslyEvent value)? logInAnonymously,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOutEvent extends AuthEvent {
  const factory _LogOutEvent() = _$_LogOutEvent;
  const _LogOutEvent._() : super._();
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({bool isLoading, String error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String error});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
  }) {
    return _then(_$_AuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState({this.isLoading = false, this.error = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({final bool isLoading, final String error}) =
      _$_AuthState;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
