import 'package:dartz/dartz.dart';
import 'package:kueski_movies_app/domain/movie/movie.dart';
import 'package:kueski_movies_app/domain/movie/movie_exceptions.dart';
import 'package:kueski_movies_app/domain/movie/movie_list_item.dart';

abstract class IMovieRepository {
  Future<Either<MovieException, List<MovieListItem>>> getMovieList({
    required int actualPage,
    required bool isPlaying,
    DateTime? maxDate,
  });

  Future<Either<MovieException, Movie>> getMovieDetails({required int movieId});

  Future<Either<MovieException, List<MovieListItem>>> saveMovieToFavourites(
      {required Either<Movie, MovieListItem> movie});

  Future<Either<MovieException, List<MovieListItem>>> removeMovieFromFavourites(
      {required int movieId});

  Future<Either<MovieException, List<MovieListItem>>>
      recoverAllFavouriteMoviesFromLocal();
}
