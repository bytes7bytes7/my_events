// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_RefreshEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_RefreshEvent value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEventsEventCopyWith<$Res> {
  factory $MyEventsEventCopyWith(
          MyEventsEvent value, $Res Function(MyEventsEvent) then) =
      _$MyEventsEventCopyWithImpl<$Res, MyEventsEvent>;
}

/// @nodoc
class _$MyEventsEventCopyWithImpl<$Res, $Val extends MyEventsEvent>
    implements $MyEventsEventCopyWith<$Res> {
  _$MyEventsEventCopyWithImpl(this._value, this._then);

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
    extends _$MyEventsEventCopyWithImpl<$Res, _$_LoadEvent>
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
    return 'MyEventsEvent.load()';
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
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
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
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent implements MyEventsEvent {
  const factory _LoadEvent() = _$_LoadEvent;
}

/// @nodoc
abstract class _$$_LoadMoreEventCopyWith<$Res> {
  factory _$$_LoadMoreEventCopyWith(
          _$_LoadMoreEvent value, $Res Function(_$_LoadMoreEvent) then) =
      __$$_LoadMoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreEventCopyWithImpl<$Res>
    extends _$MyEventsEventCopyWithImpl<$Res, _$_LoadMoreEvent>
    implements _$$_LoadMoreEventCopyWith<$Res> {
  __$$_LoadMoreEventCopyWithImpl(
      _$_LoadMoreEvent _value, $Res Function(_$_LoadMoreEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMoreEvent implements _LoadMoreEvent {
  const _$_LoadMoreEvent();

  @override
  String toString() {
    return 'MyEventsEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadMoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvent implements MyEventsEvent {
  const factory _LoadMoreEvent() = _$_LoadMoreEvent;
}

/// @nodoc
abstract class _$$_RefreshEventCopyWith<$Res> {
  factory _$$_RefreshEventCopyWith(
          _$_RefreshEvent value, $Res Function(_$_RefreshEvent) then) =
      __$$_RefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshEventCopyWithImpl<$Res>
    extends _$MyEventsEventCopyWithImpl<$Res, _$_RefreshEvent>
    implements _$$_RefreshEventCopyWith<$Res> {
  __$$_RefreshEventCopyWithImpl(
      _$_RefreshEvent _value, $Res Function(_$_RefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshEvent implements _RefreshEvent {
  const _$_RefreshEvent();

  @override
  String toString() {
    return 'MyEventsEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RefreshEvent implements MyEventsEvent {
  const factory _RefreshEvent() = _$_RefreshEvent;
}

/// @nodoc
mixin _$MyEventsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<TicketVM> get tickets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyEventsStateCopyWith<MyEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEventsStateCopyWith<$Res> {
  factory $MyEventsStateCopyWith(
          MyEventsState value, $Res Function(MyEventsState) then) =
      _$MyEventsStateCopyWithImpl<$Res, MyEventsState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      String error,
      int offset,
      int totalCount,
      List<TicketVM> tickets});
}

/// @nodoc
class _$MyEventsStateCopyWithImpl<$Res, $Val extends MyEventsState>
    implements $MyEventsStateCopyWith<$Res> {
  _$MyEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? error = null,
    Object? offset = null,
    Object? totalCount = null,
    Object? tickets = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketVM>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyEventsStateCopyWith<$Res>
    implements $MyEventsStateCopyWith<$Res> {
  factory _$$_MyEventsStateCopyWith(
          _$_MyEventsState value, $Res Function(_$_MyEventsState) then) =
      __$$_MyEventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isLoadingMore,
      String error,
      int offset,
      int totalCount,
      List<TicketVM> tickets});
}

/// @nodoc
class __$$_MyEventsStateCopyWithImpl<$Res>
    extends _$MyEventsStateCopyWithImpl<$Res, _$_MyEventsState>
    implements _$$_MyEventsStateCopyWith<$Res> {
  __$$_MyEventsStateCopyWithImpl(
      _$_MyEventsState _value, $Res Function(_$_MyEventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? error = null,
    Object? offset = null,
    Object? totalCount = null,
    Object? tickets = null,
  }) {
    return _then(_$_MyEventsState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketVM>,
    ));
  }
}

/// @nodoc

class _$_MyEventsState implements _MyEventsState {
  const _$_MyEventsState(
      {this.isLoading = false,
      this.isLoadingMore = false,
      this.error = '',
      this.offset = 0,
      this.totalCount = 0,
      final List<TicketVM> tickets = const []})
      : _tickets = tickets;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int totalCount;
  final List<TicketVM> _tickets;
  @override
  @JsonKey()
  List<TicketVM> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'MyEventsState(isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error, offset: $offset, totalCount: $totalCount, tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyEventsState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isLoadingMore, error,
      offset, totalCount, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyEventsStateCopyWith<_$_MyEventsState> get copyWith =>
      __$$_MyEventsStateCopyWithImpl<_$_MyEventsState>(this, _$identity);
}

abstract class _MyEventsState implements MyEventsState {
  const factory _MyEventsState(
      {final bool isLoading,
      final bool isLoadingMore,
      final String error,
      final int offset,
      final int totalCount,
      final List<TicketVM> tickets}) = _$_MyEventsState;

  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  String get error;
  @override
  int get offset;
  @override
  int get totalCount;
  @override
  List<TicketVM> get tickets;
  @override
  @JsonKey(ignore: true)
  _$$_MyEventsStateCopyWith<_$_MyEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}
