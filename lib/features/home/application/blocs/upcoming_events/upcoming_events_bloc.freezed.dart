// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upcoming_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpcomingEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingEventsEventCopyWith<$Res> {
  factory $UpcomingEventsEventCopyWith(
          UpcomingEventsEvent value, $Res Function(UpcomingEventsEvent) then) =
      _$UpcomingEventsEventCopyWithImpl<$Res, UpcomingEventsEvent>;
}

/// @nodoc
class _$UpcomingEventsEventCopyWithImpl<$Res, $Val extends UpcomingEventsEvent>
    implements $UpcomingEventsEventCopyWith<$Res> {
  _$UpcomingEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadEventCopyWith<$Res> {
  factory _$$_LoadEventCopyWith(
          _$_LoadEvent value, $Res Function(_$_LoadEvent) then) =
      __$$_LoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadEventCopyWithImpl<$Res>
    extends _$UpcomingEventsEventCopyWithImpl<$Res, _$_LoadEvent>
    implements _$$_LoadEventCopyWith<$Res> {
  __$$_LoadEventCopyWithImpl(
      _$_LoadEvent _value, $Res Function(_$_LoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadEvent implements _LoadEvent {
  const _$_LoadEvent();

  @override
  String toString() {
    return 'UpcomingEventsEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements UpcomingEventsEvent {
  const factory _LoadEvent() = _$_LoadEvent;
}

/// @nodoc
mixin _$UpcomingEventsState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  List<EventVM> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpcomingEventsStateCopyWith<UpcomingEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingEventsStateCopyWith<$Res> {
  factory $UpcomingEventsStateCopyWith(
          UpcomingEventsState value, $Res Function(UpcomingEventsState) then) =
      _$UpcomingEventsStateCopyWithImpl<$Res, UpcomingEventsState>;
  @useResult
  $Res call(
      {bool isLoading, String error, int currentIndex, List<EventVM> events});
}

/// @nodoc
class _$UpcomingEventsStateCopyWithImpl<$Res, $Val extends UpcomingEventsState>
    implements $UpcomingEventsStateCopyWith<$Res> {
  _$UpcomingEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? currentIndex = null,
    Object? events = null,
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
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventVM>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpcomingEventsStateCopyWith<$Res>
    implements $UpcomingEventsStateCopyWith<$Res> {
  factory _$$_UpcomingEventsStateCopyWith(_$_UpcomingEventsState value,
          $Res Function(_$_UpcomingEventsState) then) =
      __$$_UpcomingEventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, String error, int currentIndex, List<EventVM> events});
}

/// @nodoc
class __$$_UpcomingEventsStateCopyWithImpl<$Res>
    extends _$UpcomingEventsStateCopyWithImpl<$Res, _$_UpcomingEventsState>
    implements _$$_UpcomingEventsStateCopyWith<$Res> {
  __$$_UpcomingEventsStateCopyWithImpl(_$_UpcomingEventsState _value,
      $Res Function(_$_UpcomingEventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? error = null,
    Object? currentIndex = null,
    Object? events = null,
  }) {
    return _then(_$_UpcomingEventsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventVM>,
    ));
  }
}

/// @nodoc

class _$_UpcomingEventsState implements _UpcomingEventsState {
  const _$_UpcomingEventsState(
      {this.isLoading = false,
      this.error = '',
      this.currentIndex = 0,
      final List<EventVM> events = const []})
      : _events = events;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final int currentIndex;
  final List<EventVM> _events;
  @override
  @JsonKey()
  List<EventVM> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'UpcomingEventsState(isLoading: $isLoading, error: $error, currentIndex: $currentIndex, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpcomingEventsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, error, currentIndex,
      const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpcomingEventsStateCopyWith<_$_UpcomingEventsState> get copyWith =>
      __$$_UpcomingEventsStateCopyWithImpl<_$_UpcomingEventsState>(
          this, _$identity);
}

abstract class _UpcomingEventsState implements UpcomingEventsState {
  const factory _UpcomingEventsState(
      {final bool isLoading,
      final String error,
      final int currentIndex,
      final List<EventVM> events}) = _$_UpcomingEventsState;

  @override
  bool get isLoading;
  @override
  String get error;
  @override
  int get currentIndex;
  @override
  List<EventVM> get events;
  @override
  @JsonKey(ignore: true)
  _$$_UpcomingEventsStateCopyWith<_$_UpcomingEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}
