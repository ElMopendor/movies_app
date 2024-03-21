// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieListWatcherState {
  int get actualPopularPage => throw _privateConstructorUsedError;
  int get actualPlayingPage => throw _privateConstructorUsedError;
  MovieWatcherTab get selectedTab => throw _privateConstructorUsedError;
  Map<int, MovieListItem> get popularMovies =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isGrid => throw _privateConstructorUsedError;
  Option<Either<MovieException, List<MovieListItem>>>
      get getMovieListExceptionOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieListWatcherStateCopyWith<MovieListWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListWatcherStateCopyWith<$Res> {
  factory $MovieListWatcherStateCopyWith(MovieListWatcherState value,
          $Res Function(MovieListWatcherState) then) =
      _$MovieListWatcherStateCopyWithImpl<$Res, MovieListWatcherState>;
  @useResult
  $Res call(
      {int actualPopularPage,
      int actualPlayingPage,
      MovieWatcherTab selectedTab,
      Map<int, MovieListItem> popularMovies,
      bool isLoading,
      bool isGrid,
      Option<Either<MovieException, List<MovieListItem>>>
          getMovieListExceptionOrSuccessOption});
}

/// @nodoc
class _$MovieListWatcherStateCopyWithImpl<$Res,
        $Val extends MovieListWatcherState>
    implements $MovieListWatcherStateCopyWith<$Res> {
  _$MovieListWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualPopularPage = null,
    Object? actualPlayingPage = null,
    Object? selectedTab = null,
    Object? popularMovies = null,
    Object? isLoading = null,
    Object? isGrid = null,
    Object? getMovieListExceptionOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      actualPopularPage: null == actualPopularPage
          ? _value.actualPopularPage
          : actualPopularPage // ignore: cast_nullable_to_non_nullable
              as int,
      actualPlayingPage: null == actualPlayingPage
          ? _value.actualPlayingPage
          : actualPlayingPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as MovieWatcherTab,
      popularMovies: null == popularMovies
          ? _value.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as Map<int, MovieListItem>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGrid: null == isGrid
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      getMovieListExceptionOrSuccessOption: null ==
              getMovieListExceptionOrSuccessOption
          ? _value.getMovieListExceptionOrSuccessOption
          : getMovieListExceptionOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MovieException, List<MovieListItem>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListWatcherStateImplCopyWith<$Res>
    implements $MovieListWatcherStateCopyWith<$Res> {
  factory _$$MovieListWatcherStateImplCopyWith(
          _$MovieListWatcherStateImpl value,
          $Res Function(_$MovieListWatcherStateImpl) then) =
      __$$MovieListWatcherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int actualPopularPage,
      int actualPlayingPage,
      MovieWatcherTab selectedTab,
      Map<int, MovieListItem> popularMovies,
      bool isLoading,
      bool isGrid,
      Option<Either<MovieException, List<MovieListItem>>>
          getMovieListExceptionOrSuccessOption});
}

/// @nodoc
class __$$MovieListWatcherStateImplCopyWithImpl<$Res>
    extends _$MovieListWatcherStateCopyWithImpl<$Res,
        _$MovieListWatcherStateImpl>
    implements _$$MovieListWatcherStateImplCopyWith<$Res> {
  __$$MovieListWatcherStateImplCopyWithImpl(_$MovieListWatcherStateImpl _value,
      $Res Function(_$MovieListWatcherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actualPopularPage = null,
    Object? actualPlayingPage = null,
    Object? selectedTab = null,
    Object? popularMovies = null,
    Object? isLoading = null,
    Object? isGrid = null,
    Object? getMovieListExceptionOrSuccessOption = null,
  }) {
    return _then(_$MovieListWatcherStateImpl(
      actualPopularPage: null == actualPopularPage
          ? _value.actualPopularPage
          : actualPopularPage // ignore: cast_nullable_to_non_nullable
              as int,
      actualPlayingPage: null == actualPlayingPage
          ? _value.actualPlayingPage
          : actualPlayingPage // ignore: cast_nullable_to_non_nullable
              as int,
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as MovieWatcherTab,
      popularMovies: null == popularMovies
          ? _value._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
              as Map<int, MovieListItem>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGrid: null == isGrid
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      getMovieListExceptionOrSuccessOption: null ==
              getMovieListExceptionOrSuccessOption
          ? _value.getMovieListExceptionOrSuccessOption
          : getMovieListExceptionOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MovieException, List<MovieListItem>>>,
    ));
  }
}

/// @nodoc

class _$MovieListWatcherStateImpl implements _MovieListWatcherState {
  const _$MovieListWatcherStateImpl(
      {required this.actualPopularPage,
      required this.actualPlayingPage,
      required this.selectedTab,
      required final Map<int, MovieListItem> popularMovies,
      required this.isLoading,
      required this.isGrid,
      required this.getMovieListExceptionOrSuccessOption})
      : _popularMovies = popularMovies;

  @override
  final int actualPopularPage;
  @override
  final int actualPlayingPage;
  @override
  final MovieWatcherTab selectedTab;
  final Map<int, MovieListItem> _popularMovies;
  @override
  Map<int, MovieListItem> get popularMovies {
    if (_popularMovies is EqualUnmodifiableMapView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_popularMovies);
  }

  @override
  final bool isLoading;
  @override
  final bool isGrid;
  @override
  final Option<Either<MovieException, List<MovieListItem>>>
      getMovieListExceptionOrSuccessOption;

  @override
  String toString() {
    return 'MovieListWatcherState(actualPopularPage: $actualPopularPage, actualPlayingPage: $actualPlayingPage, selectedTab: $selectedTab, popularMovies: $popularMovies, isLoading: $isLoading, isGrid: $isGrid, getMovieListExceptionOrSuccessOption: $getMovieListExceptionOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListWatcherStateImpl &&
            (identical(other.actualPopularPage, actualPopularPage) ||
                other.actualPopularPage == actualPopularPage) &&
            (identical(other.actualPlayingPage, actualPlayingPage) ||
                other.actualPlayingPage == actualPlayingPage) &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            const DeepCollectionEquality()
                .equals(other._popularMovies, _popularMovies) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isGrid, isGrid) || other.isGrid == isGrid) &&
            (identical(other.getMovieListExceptionOrSuccessOption,
                    getMovieListExceptionOrSuccessOption) ||
                other.getMovieListExceptionOrSuccessOption ==
                    getMovieListExceptionOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      actualPopularPage,
      actualPlayingPage,
      selectedTab,
      const DeepCollectionEquality().hash(_popularMovies),
      isLoading,
      isGrid,
      getMovieListExceptionOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListWatcherStateImplCopyWith<_$MovieListWatcherStateImpl>
      get copyWith => __$$MovieListWatcherStateImplCopyWithImpl<
          _$MovieListWatcherStateImpl>(this, _$identity);
}

abstract class _MovieListWatcherState implements MovieListWatcherState {
  const factory _MovieListWatcherState(
      {required final int actualPopularPage,
      required final int actualPlayingPage,
      required final MovieWatcherTab selectedTab,
      required final Map<int, MovieListItem> popularMovies,
      required final bool isLoading,
      required final bool isGrid,
      required final Option<Either<MovieException, List<MovieListItem>>>
          getMovieListExceptionOrSuccessOption}) = _$MovieListWatcherStateImpl;

  @override
  int get actualPopularPage;
  @override
  int get actualPlayingPage;
  @override
  MovieWatcherTab get selectedTab;
  @override
  Map<int, MovieListItem> get popularMovies;
  @override
  bool get isLoading;
  @override
  bool get isGrid;
  @override
  Option<Either<MovieException, List<MovieListItem>>>
      get getMovieListExceptionOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$MovieListWatcherStateImplCopyWith<_$MovieListWatcherStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
