part of 'movie_list_watcher_cubit.dart';

@freezed
class MovieListWatcherState with _$MovieListWatcherState {
  const factory MovieListWatcherState({
    required int actualPopularPage,
    required int actualPlayingPage,
    required MovieWatcherTab selectedTab,
    required Map<String, List<MovieListItem>> cachedListItem,
    required bool isLoading,
    required Option<Either<MovieException, List<MovieListItem>>>
        getMovieListExceptionOrSuccessOption,
  }) = _MovieListWatcherState;

  factory MovieListWatcherState.initial() => MovieListWatcherState(
        actualPopularPage: 1,
        actualPlayingPage: 1,
        selectedTab: MovieWatcherTab.Popular,
        cachedListItem: {},
        isLoading: true,
        getMovieListExceptionOrSuccessOption: none(),
      );
}

enum MovieWatcherTab { Popular, IsPlaying, Favourites }
