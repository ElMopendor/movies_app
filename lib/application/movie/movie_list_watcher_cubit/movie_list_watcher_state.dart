part of 'movie_list_watcher_cubit.dart';

@freezed
class MovieListWatcherState with _$MovieListWatcherState {
  const factory MovieListWatcherState({
    required int actualPopularPage,
    required int actualPlayingPage,
    required MovieWatcherTab selectedTab,
    required Map<int, MovieListItem> popularMovies,
    required bool isLoading,
    required bool isGrid,
    required Option<Either<MovieException, List<MovieListItem>>>
        getMovieListExceptionOrSuccessOption,
  }) = _MovieListWatcherState;

  factory MovieListWatcherState.initial() => MovieListWatcherState(
        actualPopularPage: 1,
        actualPlayingPage: 1,
        selectedTab: MovieWatcherTab.Popular,
        popularMovies: {},
        isLoading: true,
        isGrid: false,
        getMovieListExceptionOrSuccessOption: none(),
      );
}

enum MovieWatcherTab { Popular, IsPlaying, Favourites }
