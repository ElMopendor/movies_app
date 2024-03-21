import 'package:intl/intl.dart';
import 'package:kueski_movies_app/domain/movie/movie.dart';
import 'package:kueski_movies_app/domain/movie/movie_list_item.dart';

class MovieListItemDto {
  const MovieListItemDto(
      {required this.id,
      this.adult,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.backdropPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  final int id;
  final bool? adult;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? backdropPath;
  final DateTime? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  factory MovieListItemDto.fromJson(Map<String, dynamic> json) =>
      MovieListItemDto(
        id: json['id'],
        adult: json['adult'],
        originalLanguage: json['original_language'],
        originalTitle: json['original_title'],
        overview: json['overview'],
        popularity: json['popularity'],
        posterPath: json['poster_path'],
        backdropPath: json['backdrop_path'],
        releaseDate: DateTime.tryParse(json['release_date']),
        title: json['title'],
        video: json['video'],
        voteAverage: json['vote_average'],
        voteCount: json['voteCount'],
      );
  factory MovieListItemDto.fromMovieDetails(Movie movie) => MovieListItemDto(
        id: movie.id,
        adult: movie.adult,
        originalLanguage: movie.originalLanguage,
        originalTitle: movie.originalTitle,
        overview: movie.overview,
        popularity: movie.popularity,
        posterPath: movie.posterPath,
        backdropPath: movie.backdropPath,
        releaseDate: movie.releaseDate,
        title: movie.title,
        video: movie.video,
        voteAverage: movie.voteAverage,
        voteCount: movie.voteCount,
      );
  factory MovieListItemDto.fromDomain(MovieListItem movie) => MovieListItemDto(
        id: movie.id,
        adult: movie.adult,
        originalLanguage: movie.originalLanguage,
        originalTitle: movie.originalTitle,
        overview: movie.overview,
        popularity: movie.popularity,
        posterPath: movie.posterPath,
        backdropPath: movie.backdropPath,
        releaseDate: movie.releaseDate,
        title: movie.title,
        video: movie.video,
        voteAverage: movie.voteAverage,
        voteCount: movie.voteCount,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'adult': adult,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'backdrop_path': backdropPath,
        'release_date':
            DateFormat('yyyy-MM-dd').format(releaseDate ?? DateTime.now()),
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'voteCount': voteCount,
      };

  MovieListItem toDomain() => MovieListItem(
        id: id,
        adult: adult ?? false,
        originalLanguage: originalLanguage ?? '',
        originalTitle: originalTitle ?? '',
        overview: overview ?? '',
        popularity: popularity ?? 0.0,
        posterPath: posterPath ?? '',
        backdropPath: backdropPath ?? '',
        releaseDate: releaseDate ?? DateTime(1901),
        title: title ?? '',
        video: video ?? false,
        voteAverage: voteAverage ?? 0.0,
        voteCount: voteCount ?? 0,
      );
}
