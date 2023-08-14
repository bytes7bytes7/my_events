// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotificationsAmount,
    required TResult Function(int index) selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotificationsAmount,
    TResult? Function(int index)? selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotificationsAmount,
    TResult Function(int index)? selectTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotificationsAmountEvent value)
        loadNotificationsAmount,
    required TResult Function(_SelectTabEvent value) selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotificationsAmountEvent value)?
        loadNotificationsAmount,
    TResult? Function(_SelectTabEvent value)? selectTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotificationsAmountEvent value)?
        loadNotificationsAmount,
    TResult Function(_SelectTabEvent value)? selectTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadNotificationsAmountEventCopyWith<$Res> {
  factory _$$_LoadNotificationsAmountEventCopyWith(
          _$_LoadNotificationsAmountEvent value,
          $Res Function(_$_LoadNotificationsAmountEvent) then) =
      __$$_LoadNotificationsAmountEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadNotificationsAmountEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_LoadNotificationsAmountEvent>
    implements _$$_LoadNotificationsAmountEventCopyWith<$Res> {
  __$$_LoadNotificationsAmountEventCopyWithImpl(
      _$_LoadNotificationsAmountEvent _value,
      $Res Function(_$_LoadNotificationsAmountEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadNotificationsAmountEvent implements _LoadNotificationsAmountEvent {
  const _$_LoadNotificationsAmountEvent();

  @override
  String toString() {
    return 'HomeEvent.loadNotificationsAmount()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadNotificationsAmountEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotificationsAmount,
    required TResult Function(int index) selectTab,
  }) {
    return loadNotificationsAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotificationsAmount,
    TResult? Function(int index)? selectTab,
  }) {
    return loadNotificationsAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotificationsAmount,
    TResult Function(int index)? selectTab,
    required TResult orElse(),
  }) {
    if (loadNotificationsAmount != null) {
      return loadNotificationsAmount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotificationsAmountEvent value)
        loadNotificationsAmount,
    required TResult Function(_SelectTabEvent value) selectTab,
  }) {
    return loadNotificationsAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotificationsAmountEvent value)?
        loadNotificationsAmount,
    TResult? Function(_SelectTabEvent value)? selectTab,
  }) {
    return loadNotificationsAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotificationsAmountEvent value)?
        loadNotificationsAmount,
    TResult Function(_SelectTabEvent value)? selectTab,
    required TResult orElse(),
  }) {
    if (loadNotificationsAmount != null) {
      return loadNotificationsAmount(this);
    }
    return orElse();
  }
}

abstract class _LoadNotificationsAmountEvent implements HomeEvent {
  const factory _LoadNotificationsAmountEvent() =
      _$_LoadNotificationsAmountEvent;
}

/// @nodoc
abstract class _$$_SelectTabEventCopyWith<$Res> {
  factory _$$_SelectTabEventCopyWith(
          _$_SelectTabEvent value, $Res Function(_$_SelectTabEvent) then) =
      __$$_SelectTabEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_SelectTabEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_SelectTabEvent>
    implements _$$_SelectTabEventCopyWith<$Res> {
  __$$_SelectTabEventCopyWithImpl(
      _$_SelectTabEvent _value, $Res Function(_$_SelectTabEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_SelectTabEvent(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectTabEvent implements _SelectTabEvent {
  const _$_SelectTabEvent({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.selectTab(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTabEvent &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTabEventCopyWith<_$_SelectTabEvent> get copyWith =>
      __$$_SelectTabEventCopyWithImpl<_$_SelectTabEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotificationsAmount,
    required TResult Function(int index) selectTab,
  }) {
    return selectTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadNotificationsAmount,
    TResult? Function(int index)? selectTab,
  }) {
    return selectTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotificationsAmount,
    TResult Function(int index)? selectTab,
    required TResult orElse(),
  }) {
    if (selectTab != null) {
      return selectTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadNotificationsAmountEvent value)
        loadNotificationsAmount,
    required TResult Function(_SelectTabEvent value) selectTab,
  }) {
    return selectTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadNotificationsAmountEvent value)?
        loadNotificationsAmount,
    TResult? Function(_SelectTabEvent value)? selectTab,
  }) {
    return selectTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadNotificationsAmountEvent value)?
        loadNotificationsAmount,
    TResult Function(_SelectTabEvent value)? selectTab,
    required TResult orElse(),
  }) {
    if (selectTab != null) {
      return selectTab(this);
    }
    return orElse();
  }
}

abstract class _SelectTabEvent implements HomeEvent {
  const factory _SelectTabEvent({required final int index}) = _$_SelectTabEvent;

  int get index;
  @JsonKey(ignore: true)
  _$$_SelectTabEventCopyWith<_$_SelectTabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String get notificationsAmount => throw _privateConstructorUsedError;
  int get selectedTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      String error,
      String notificationsAmount,
      int selectedTabIndex});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? notificationsAmount = null,
    Object? selectedTabIndex = null,
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
      notificationsAmount: null == notificationsAmount
          ? _value.notificationsAmount
          : notificationsAmount // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String error,
      String notificationsAmount,
      int selectedTabIndex});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? notificationsAmount = null,
    Object? selectedTabIndex = null,
  }) {
    return _then(_$_HomeState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      notificationsAmount: null == notificationsAmount
          ? _value.notificationsAmount
          : notificationsAmount // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {this.isLoading = false,
      this.error = '',
      this.notificationsAmount = '',
      this.selectedTabIndex = 0});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final String notificationsAmount;
  @override
  @JsonKey()
  final int selectedTabIndex;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, error: $error, notificationsAmount: $notificationsAmount, selectedTabIndex: $selectedTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.notificationsAmount, notificationsAmount) ||
                other.notificationsAmount == notificationsAmount) &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, error, notificationsAmount, selectedTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final bool isLoading,
      final String error,
      final String notificationsAmount,
      final int selectedTabIndex}) = _$_HomeState;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  String get notificationsAmount;
  @override
  int get selectedTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
