import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kueski_movies_app/domain/movie/i_movie_repository.dart';
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
    //obtain the page to search according to know if its previous page or next page
    emit(state.copyWith(isLoading: true, selectedTab: actualTab));

    if (actualTab == MovieWatcherTab.Popular) {
      final keyToSearch = state.actualPopularPage.toString() + actualTab.name;
      _getData(key: keyToSearch);
    } else if (actualTab == MovieWatcherTab.IsPlaying) {
      final keyToSearch = state.actualPlayingPage.toString() + actualTab.name;
      _getData(key: keyToSearch);
    } else {
      //refer to actual tab equals to favourites
      final response =
          await movieRepository.recoverAllFavouriteMoviesFromLocal();

      // update our cached list of items
      emit(state.copyWith(
        isLoading: false,
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

    final key = pageToSearch.toString() + state.selectedTab.name;

    _getData(key: key);
  }

  Future<void> _getData({required String key}) async {
    //verify if cachedlistitem contains our key to search
    if (state.cachedListItem.containsKey(key)) {
      emit(state.copyWith(
        isLoading: false,
        getMovieListExceptionOrSuccessOption:
            optionOf(right(state.cachedListItem[key]!)),
      ));
    }
    //make a request to back
    else {
      final response =
          await movieRepository.getMovieList(actualPage: 1, isPlaying: false);

      // update our cached list of items
      if (response.isRight()) {
        state.cachedListItem[key] =
            response.fold((_) => throw Error(), (list) => list);
      }

      emit(state.copyWith(
        isLoading: false,
        getMovieListExceptionOrSuccessOption: optionOf(response),
      ));
    }
  }
}
