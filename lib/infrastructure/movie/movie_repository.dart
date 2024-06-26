import 'package:dio/dio.dart';
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

  /// Returns the movies list
  /// Parameters
  /// [actualPage] is the current indexed page
  /// [isPlaying] for obtain the most current movies
  ///
  /// Throws an [MovieException] if there an error
  @override
  Future<Either<MovieException, List<MovieListItem>>> getMovieList({
    required int actualPage,
    required bool isPlaying,
    DateTime? maxDate,
  }) async {
    try {
      var params = {
        'include_adult': false,
        'include_video': false,
        'language': 'en-US',
        'page': actualPage,
        'sort_by': 'popularity.des',
      };

      if (isPlaying) {
        params.addAll({
          'with_release_type': '2|3',
          'release_date_gte': '{min_date}',
          'release_date_lte':
              DateFormat('yyyy-MM-dd').format(maxDate ?? DateTime.now()),
        });
      }
      final response =
          await client.get('/discover/movie', queryParameters: params);

      if (response.statusCode == 200) {
        final list = (response.data['results'] as List)
            .map((jsonItem) => MovieListItemDto.fromJson(jsonItem).toDomain())
            .toList();
        for (var i = 0; i < list.length; i++) {
          final isFavourite = await _seeIfMovieIsFavourite(list[i].id);
          list[i].makeFavourite(isFavourite ? 'YES' : '');
        }
        return right(list);
      } else {
        return left(const MovieException.unknown());
      }
    } on DioException catch (e) {
      return left(MovieException.serverError(
          statusCode: e.response?.statusCode ?? 404,
          statusMessage:
              e.response?.data['status_message'] ?? 'Error desconocido'));
    } on Exception catch (_) {
      return left(const MovieException.unknown());
    }
  }

  /// Returns details of a movie
  /// Parameters
  /// [movieId] is movie id
  ///
  /// Throws an [MovieException] if there an error
  @override
  Future<Either<MovieException, Movie>> getMovieDetails(
      {required int movieId}) async {
    try {
      final response = await client.get('movie/$movieId');

      if (response.statusCode == 200) {
        final movie = MovieDto.fromJson(response.data).toDomain();
        final isFavourite = await _seeIfMovieIsFavourite(movie.id);
        movie.makeFavourite(isFavourite ? 'YES' : '');
        return right(movie);
      } else {
        return left(const MovieException.unknown());
      }
    } on DioException catch (e) {
      return left(MovieException.serverError(
          statusCode: e.response?.statusCode ?? 404,
          statusMessage:
              e.response?.data['status_message'] ?? 'Error desconocido'));
    } on Exception catch (_) {
      return left(const MovieException.unknown());
    }
  }

  /// Consults to local storage if a movie is favourite or not
  /// Parameters
  /// [movieId] to make te consult
  ///
  /// Retuns a [bool], true if movie is favourite, false if not
  ///
  Future<bool> _seeIfMovieIsFavourite(int movieId) async {
    try {
      final result = await localInstance
          .collection('movies')
          .doc(movieId.toString())
          .get();
      if (result != null) {
        return true;
      }
      return false;
    } on Exception catch (_) {
      return false;
    }
  }

  /// Save Movie to Favourites
  /// Parameters
  /// [Either<Movie,MovieListItem>], we can save two types of movie models, in particular [MovieListItem]
  ///
  /// Retuns a [MovieException] if there an error.
  ///
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
          .set(movieToSave.toJson(aIsFavourite: 'YES'));

      return right(movieToSave.toDomain());
    } on Exception catch (_) {
      return left(const MovieException.cantRemoveMovieFromFavourites());
    }
  }

  /// Remove movie from favourites
  /// Parameters
  /// [movieId] to make te consult
  ///
  /// Retuns a [MovieException], if there's an error.
  /// Returns [unit] if the process has finished with no problems.
  ///
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

  /// Get list of Favourite movies saved in local storage
  ///
  /// Retuns a [MovieExpcetion], if there's an error.

  @override
  Future<Either<MovieException, List<MovieListItem>>>
      recoverAllFavouriteMoviesFromLocal() async {
    try {
      // await localInstance.collection('movies').delete();
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
