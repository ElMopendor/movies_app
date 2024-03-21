import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_exceptions.freezed.dart';

@freezed
abstract class MovieException with _$MovieException {
  const factory MovieException.unknown() = _Unknown;
  const factory MovieException.unauthorized() = _Unauthorized;
  const factory MovieException.serverError(
      {required int statusCode, required String statusMessage}) = _ServerError;
  const factory MovieException.cantSaveMovieToFavourites() =
      _CantSaveMovieToFavourites;
  const factory MovieException.cantRemoveMovieFromFavourites() =
      _CantRemoveMovieFromFavourites;
  const factory MovieException.cantGetFavourites() = _CantGetFavourites;
}
