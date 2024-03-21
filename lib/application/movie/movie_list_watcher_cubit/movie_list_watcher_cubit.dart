import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kueski_movies_app/domain/movie/i_movie_repository.dart';
import 'package:kueski_movies_app/domain/movie/movie.dart';
import 'package:kueski_movies_app/domain/movie/movie_exceptions.dart';
import 'package:kueski_movies_app/domain/movie/movie_list_item.dart';

part 'movie_list_watcher_state.dart';
part 'movie_list_watcher_cubit.freezed.dart';

@injectable
class MovieListWatcherCubit extends Cubit<MovieListWatcherState> {
  MovieListWatcherCubit(this.movieRepository)
      : super(MovieListWatcherState.initial());

  final IMovieRepository movieRepository;

  Future<void> changeTabMovieList(
      {MovieWatcherTab actualTab = MovieWatcherTab.Popular}) async {
    emit(state.copyWith(isLoading: true, selectedTab: actualTab));

    if (actualTab == MovieWatcherTab.Popular) {
      _getData(actualPage: state.actualPopularPage, isPlaying: false);
    } else if (actualTab == MovieWatcherTab.IsPlaying) {
      _getData(actualPage: state.actualPlayingPage, isPlaying: true);
    } else {
      //refer to actual tab equals to favourites
      final response =
          await movieRepository.recoverAllFavouriteMoviesFromLocal();

      final list = response.fold((f) => [], (list) => list);
      Map<int, MovieListItem> popularMovies = {};
      for (final item in list) {
        popularMovies[item.id] = item;
      }

      // update our cached list of items
      emit(state.copyWith(
        isLoading: false,
        popularMovies: popularMovies,
        getMovieListExceptionOrSuccessOption: optionOf(response),
      ));
    }
  }

  Future<void> getPrevNextMovieList({bool isPrev = false}) async {
    //obtain the page to search according to know if its previous page or next page

    int pageToSearch = 0;
    if (state.selectedTab == MovieWatcherTab.IsPlaying) {
      pageToSearch = isPrev
          ? state.actualPlayingPage - 1 > 0
              ? state.actualPlayingPage - 1
              : 1
          : state.actualPlayingPage + 1;
      emit(state.copyWith(isLoading: true, actualPlayingPage: pageToSearch));
    } else {
      pageToSearch = isPrev
          ? state.actualPopularPage - 1 > 0
              ? state.actualPopularPage - 1
              : 1
          : state.actualPopularPage + 1;
      emit(state.copyWith(isLoading: true, actualPopularPage: pageToSearch));
    }

    _getData(
        actualPage: pageToSearch,
        isPlaying: state.selectedTab == MovieWatcherTab.IsPlaying);
  }

  Future<void> _getData(
      {required int actualPage, required bool isPlaying}) async {
    final response = await movieRepository.getMovieList(
        actualPage: actualPage, isPlaying: isPlaying);

    emit(state.copyWith(
      isLoading: false,
      getMovieListExceptionOrSuccessOption: optionOf(response),
    ));
  }

  Future<void> setFavourite(int movieId, Either<Movie, MovieListItem> movie,
      String isFavourite) async {
    if (isFavourite != 'YES') {
      final response =
          await movieRepository.saveMovieToFavourites(movie: movie);
      if (response.isRight()) {
        final movieResponse =
            response.fold((f) => throw Error(), (movie) => movie);
        state.popularMovies[movieResponse.id] = movieResponse;
      }
    } else {
      final response =
          await movieRepository.removeMovieFromFavourites(movieId: movieId);
      if (response.isRight()) {
        if (state.selectedTab == MovieWatcherTab.Favourites) {
          state.popularMovies.remove(movieId);
          return;
        }
      }
    }
  }

  void changeViewGridList() {
    emit(state.copyWith(isGrid: !state.isGrid));
  }
}
