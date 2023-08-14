// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(String id) selectCategory,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(String id)? selectCategory,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(String id)? selectCategory,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SelectCategoryEvent value) selectCategory,
    required TResult Function(_RefreshEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SelectCategoryEvent value)? selectCategory,
    TResult? Function(_RefreshEvent value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListEventCopyWith<$Res> {
  factory $NewsListEventCopyWith(
          NewsListEvent value, $Res Function(NewsListEvent) then) =
      _$NewsListEventCopyWithImpl<$Res, NewsListEvent>;
}

/// @nodoc
class _$NewsListEventCopyWithImpl<$Res, $Val extends NewsListEvent>
    implements $NewsListEventCopyWith<$Res> {
  _$NewsListEventCopyWithImpl(this._value, this._then);

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
    extends _$NewsListEventCopyWithImpl<$Res, _$_LoadEvent>
    implements _$$_LoadEventCopyWith<$Res> {
  __$$_LoadEventCopyWithImpl(
      _$_LoadEvent _value, $Res Function(_$_LoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadEvent extends _LoadEvent {
  const _$_LoadEvent() : super._();

  @override
  String toString() {
    return 'NewsListEvent.load()';
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
    required TResult Function(String id) selectCategory,
    required TResult Function() refresh,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(String id)? selectCategory,
    TResult? Function()? refresh,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(String id)? selectCategory,
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
    required TResult Function(_SelectCategoryEvent value) selectCategory,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SelectCategoryEvent value)? selectCategory,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadEvent extends NewsListEvent {
  const factory _LoadEvent() = _$_LoadEvent;
  const _LoadEvent._() : super._();
}

/// @nodoc
abstract class _$$_LoadMoreEventCopyWith<$Res> {
  factory _$$_LoadMoreEventCopyWith(
          _$_LoadMoreEvent value, $Res Function(_$_LoadMoreEvent) then) =
      __$$_LoadMoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadMoreEventCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_LoadMoreEvent>
    implements _$$_LoadMoreEventCopyWith<$Res> {
  __$$_LoadMoreEventCopyWithImpl(
      _$_LoadMoreEvent _value, $Res Function(_$_LoadMoreEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadMoreEvent extends _LoadMoreEvent {
  const _$_LoadMoreEvent() : super._();

  @override
  String toString() {
    return 'NewsListEvent.loadMore()';
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
    required TResult Function(String id) selectCategory,
    required TResult Function() refresh,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(String id)? selectCategory,
    TResult? Function()? refresh,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(String id)? selectCategory,
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
    required TResult Function(_SelectCategoryEvent value) selectCategory,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SelectCategoryEvent value)? selectCategory,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvent extends NewsListEvent {
  const factory _LoadMoreEvent() = _$_LoadMoreEvent;
  const _LoadMoreEvent._() : super._();
}

/// @nodoc
abstract class _$$_SelectCategoryEventCopyWith<$Res> {
  factory _$$_SelectCategoryEventCopyWith(_$_SelectCategoryEvent value,
          $Res Function(_$_SelectCategoryEvent) then) =
      __$$_SelectCategoryEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_SelectCategoryEventCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_SelectCategoryEvent>
    implements _$$_SelectCategoryEventCopyWith<$Res> {
  __$$_SelectCategoryEventCopyWithImpl(_$_SelectCategoryEvent _value,
      $Res Function(_$_SelectCategoryEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_SelectCategoryEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectCategoryEvent extends _SelectCategoryEvent {
  const _$_SelectCategoryEvent({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'NewsListEvent.selectCategory(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCategoryEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCategoryEventCopyWith<_$_SelectCategoryEvent> get copyWith =>
      __$$_SelectCategoryEventCopyWithImpl<_$_SelectCategoryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
    required TResult Function(String id) selectCategory,
    required TResult Function() refresh,
  }) {
    return selectCategory(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(String id)? selectCategory,
    TResult? Function()? refresh,
  }) {
    return selectCategory?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(String id)? selectCategory,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvent value) load,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SelectCategoryEvent value) selectCategory,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return selectCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SelectCategoryEvent value)? selectCategory,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return selectCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (selectCategory != null) {
      return selectCategory(this);
    }
    return orElse();
  }
}

abstract class _SelectCategoryEvent extends NewsListEvent {
  const factory _SelectCategoryEvent({required final String id}) =
      _$_SelectCategoryEvent;
  const _SelectCategoryEvent._() : super._();

  String get id;
  @JsonKey(ignore: true)
  _$$_SelectCategoryEventCopyWith<_$_SelectCategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshEventCopyWith<$Res> {
  factory _$$_RefreshEventCopyWith(
          _$_RefreshEvent value, $Res Function(_$_RefreshEvent) then) =
      __$$_RefreshEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshEventCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_RefreshEvent>
    implements _$$_RefreshEventCopyWith<$Res> {
  __$$_RefreshEventCopyWithImpl(
      _$_RefreshEvent _value, $Res Function(_$_RefreshEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshEvent extends _RefreshEvent {
  const _$_RefreshEvent() : super._();

  @override
  String toString() {
    return 'NewsListEvent.refresh()';
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
    required TResult Function(String id) selectCategory,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? loadMore,
    TResult? Function(String id)? selectCategory,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    TResult Function(String id)? selectCategory,
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
    required TResult Function(_SelectCategoryEvent value) selectCategory,
    required TResult Function(_RefreshEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvent value)? load,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SelectCategoryEvent value)? selectCategory,
    TResult? Function(_RefreshEvent value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvent value)? load,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SelectCategoryEvent value)? selectCategory,
    TResult Function(_RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _RefreshEvent extends NewsListEvent {
  const factory _RefreshEvent() = _$_RefreshEvent;
  const _RefreshEvent._() : super._();
}

/// @nodoc
mixin _$NewsListState {
  bool get isLoadingCategories => throw _privateConstructorUsedError;
  bool get isLoadingNews => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  String? get selectedCategoryID => throw _privateConstructorUsedError;
  List<NewsCategoryVM> get categories => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  List<NewsVM> get news => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsListStateCopyWith<NewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListStateCopyWith<$Res> {
  factory $NewsListStateCopyWith(
          NewsListState value, $Res Function(NewsListState) then) =
      _$NewsListStateCopyWithImpl<$Res, NewsListState>;
  @useResult
  $Res call(
      {bool isLoadingCategories,
      bool isLoadingNews,
      bool isLoadingMore,
      String error,
      String? selectedCategoryID,
      List<NewsCategoryVM> categories,
      int offset,
      int totalCount,
      List<NewsVM> news});
}

/// @nodoc
class _$NewsListStateCopyWithImpl<$Res, $Val extends NewsListState>
    implements $NewsListStateCopyWith<$Res> {
  _$NewsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingCategories = null,
    Object? isLoadingNews = null,
    Object? isLoadingMore = null,
    Object? error = null,
    Object? selectedCategoryID = freezed,
    Object? categories = null,
    Object? offset = null,
    Object? totalCount = null,
    Object? news = null,
  }) {
    return _then(_value.copyWith(
      isLoadingCategories: null == isLoadingCategories
          ? _value.isLoadingCategories
          : isLoadingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNews: null == isLoadingNews
          ? _value.isLoadingNews
          : isLoadingNews // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCategoryID: freezed == selectedCategoryID
          ? _value.selectedCategoryID
          : selectedCategoryID // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NewsCategoryVM>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsVM>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsListStateCopyWith<$Res>
    implements $NewsListStateCopyWith<$Res> {
  factory _$$_NewsListStateCopyWith(
          _$_NewsListState value, $Res Function(_$_NewsListState) then) =
      __$$_NewsListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingCategories,
      bool isLoadingNews,
      bool isLoadingMore,
      String error,
      String? selectedCategoryID,
      List<NewsCategoryVM> categories,
      int offset,
      int totalCount,
      List<NewsVM> news});
}

/// @nodoc
class __$$_NewsListStateCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$_NewsListState>
    implements _$$_NewsListStateCopyWith<$Res> {
  __$$_NewsListStateCopyWithImpl(
      _$_NewsListState _value, $Res Function(_$_NewsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingCategories = null,
    Object? isLoadingNews = null,
    Object? isLoadingMore = null,
    Object? error = null,
    Object? selectedCategoryID = freezed,
    Object? categories = null,
    Object? offset = null,
    Object? totalCount = null,
    Object? news = null,
  }) {
    return _then(_$_NewsListState(
      isLoadingCategories: null == isLoadingCategories
          ? _value.isLoadingCategories
          : isLoadingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNews: null == isLoadingNews
          ? _value.isLoadingNews
          : isLoadingNews // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCategoryID: freezed == selectedCategoryID
          ? _value.selectedCategoryID
          : selectedCategoryID // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<NewsCategoryVM>,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsVM>,
    ));
  }
}

/// @nodoc

class _$_NewsListState implements _NewsListState {
  const _$_NewsListState(
      {this.isLoadingCategories = false,
      this.isLoadingNews = false,
      this.isLoadingMore = false,
      this.error = '',
      this.selectedCategoryID,
      final List<NewsCategoryVM> categories = const [],
      this.offset = 0,
      this.totalCount = 0,
      final List<NewsVM> news = const []})
      : _categories = categories,
        _news = news;

  @override
  @JsonKey()
  final bool isLoadingCategories;
  @override
  @JsonKey()
  final bool isLoadingNews;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final String error;
  @override
  final String? selectedCategoryID;
  final List<NewsCategoryVM> _categories;
  @override
  @JsonKey()
  List<NewsCategoryVM> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int totalCount;
  final List<NewsVM> _news;
  @override
  @JsonKey()
  List<NewsVM> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  String toString() {
    return 'NewsListState(isLoadingCategories: $isLoadingCategories, isLoadingNews: $isLoadingNews, isLoadingMore: $isLoadingMore, error: $error, selectedCategoryID: $selectedCategoryID, categories: $categories, offset: $offset, totalCount: $totalCount, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsListState &&
            (identical(other.isLoadingCategories, isLoadingCategories) ||
                other.isLoadingCategories == isLoadingCategories) &&
            (identical(other.isLoadingNews, isLoadingNews) ||
                other.isLoadingNews == isLoadingNews) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedCategoryID, selectedCategoryID) ||
                other.selectedCategoryID == selectedCategoryID) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingCategories,
      isLoadingNews,
      isLoadingMore,
      error,
      selectedCategoryID,
      const DeepCollectionEquality().hash(_categories),
      offset,
      totalCount,
      const DeepCollectionEquality().hash(_news));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsListStateCopyWith<_$_NewsListState> get copyWith =>
      __$$_NewsListStateCopyWithImpl<_$_NewsListState>(this, _$identity);
}

abstract class _NewsListState implements NewsListState {
  const factory _NewsListState(
      {final bool isLoadingCategories,
      final bool isLoadingNews,
      final bool isLoadingMore,
      final String error,
      final String? selectedCategoryID,
      final List<NewsCategoryVM> categories,
      final int offset,
      final int totalCount,
      final List<NewsVM> news}) = _$_NewsListState;

  @override
  bool get isLoadingCategories;
  @override
  bool get isLoadingNews;
  @override
  bool get isLoadingMore;
  @override
  String get error;
  @override
  String? get selectedCategoryID;
  @override
  List<NewsCategoryVM> get categories;
  @override
  int get offset;
  @override
  int get totalCount;
  @override
  List<NewsVM> get news;
  @override
  @JsonKey(ignore: true)
  _$$_NewsListStateCopyWith<_$_NewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
