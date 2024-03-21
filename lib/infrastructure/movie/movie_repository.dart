import 'package:intl/intl.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:kueski_movies_app/domain/movie/i_movie_repository.dart';
import 'package:kueski_movies_app/domain/movie/movie.dart';
import 'package:kueski_movies_app/domain/movie/movie_exceptions.dart';
import 'package:kueski_movies_app/domain/movie/movie_list_item.dart';
import 'package:kueski_movies_app/infrastructure/core/movie_client.dart';
import 'package:kueski_movies_app/infrastructure/movie/movie_dtos.dart';
import 'package:kueski_movies_app/infrastructure/movie/movie_list_item_dtos.dart';
import 'package:localstore/localstore.dart';

@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final MovieClient client;
  final Localstore localInstance;

  MovieRepository(this.client, this.localInstance);

  @override
  Future<Either<MovieException, List<MovieListItem>>> getMovieList({
    required int actualPage,
    required bool isPlaying,
    DateTime? maxDate,
  }) async {
    final params = {
      'include_adult': false,
      'include_video': false,
      'language': 'en-US',
      'page': actualPage,
      'sort_by': 'popularity.des',
      'with_release_type': '2|3',
      'release_date_gte': '{min_date}',
      'release_date_lte':
          DateFormat('yyyy-MM-dd').format(maxDate ?? DateTime.now()),
    };
    final response =
        await client.get('discover/movie', queryParameters: params);

    if (response.statusCode == 200) {
      final list = (response.data['results'] as List)
          .map((jsonItem) => MovieListItemDto.fromJson(jsonItem).toDomain())
          .toList();
      return right(list);
    } else {
      return left(const MovieException.serverError(
          statusCode: '404', statusMessage: 'No autorizado'));
    }
  }

  @override
  Future<Either<MovieException, Movie>> getMovieDetails(
      {required int movieId}) async {
// http://image.tmdb.org/t/p/w500/mExN6lJHmLeGjwDmDrNNjR4MdCq.jpg

    final response = await client.get('movie/$movieId');

    if (response.statusCode == 200) {
      final movie = MovieDto.fromJson(response.data).toDomain();
      return right(movie);
    } else {
      return left(const MovieException.serverError(
          statusCode: '404', statusMessage: 'No autorizado'));
    }
  }

  @override
  Future<Either<MovieException, MovieListItem>> saveMovieToFavourites(
      {required Either<Movie, MovieListItem> movie}) async {
    try {
      final movieToSave = movie.fold(
        (movieDetails) => MovieListItemDto.fromMovieDetails(movieDetails),
        (movieListItem) => MovieListItemDto.fromDomain(movieListItem),
      );

      await localInstance
          .collection('movies')
          .doc(movieToSave.id.toString())
          .set(movieToSave.toJson());

      return right(movieToSave.toDomain());
    } on Exception catch (_) {
      return left(const MovieException.cantRemoveMovieFromFavourites());
    }
  }

  @override
  Future<Either<MovieException, Unit>> removeMovieFromFavourites(
      {required int movieId}) async {
    try {
      await localInstance.collection('movies').doc(movieId.toString()).delete();

      return right(unit);
    } on Exception catch (_) {
      return left(const MovieException.cantRemoveMovieFromFavourites());
    }
  }

  @override
  Future<Either<MovieException, List<MovieListItem>>>
      recoverAllFavouriteMoviesFromLocal() async {
    try {
      final data = await localInstance.collection('movies').get();

      final list = data?.values
          .map((json) => MovieListItemDto.fromJson(json).toDomain())
          .toList();

      return right(list ?? []);
    } on Exception catch (_) {
      return left(const MovieException.cantGetFavourites());
    }
  }
}
