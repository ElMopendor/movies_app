import 'package:kueski_movies_app/domain/movie/movie.dart';
import 'package:kueski_movies_app/infrastructure/movie/language_dtos.dart';
import 'package:kueski_movies_app/infrastructure/movie/movie_genre_dtos.dart';
import 'package:kueski_movies_app/infrastructure/movie/production_company_dtos.dart';

class MovieDto {
  const MovieDto({
    required this.id,
    this.adult,
    this.budget,
    required this.movieGenreDtoList,
    required this.productionCompanyDtoList,
    required this.spokenLanguageDtoList,
    this.status,
    this.homePage,
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
    this.voteCount,
  });

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
  final double? budget;
  final List<MovieGenreDto> movieGenreDtoList;
  final List<ProductionCompanyDto> productionCompanyDtoList;
  final List<LanguageDto> spokenLanguageDtoList;
  final String? status;
  final String? homePage;

  factory MovieDto.fromJson(Map<String, dynamic> json) => MovieDto(
        id: json['id'],
        adult: json['adult'],
        budget: json['budget'],
        movieGenreDtoList: json['genres'] is List
            ? (json['genres'] as List)
                .map((genreJson) => MovieGenreDto.fromJson(genreJson))
                .toList()
            : [],
        productionCompanyDtoList: json['production_companies'] is List
            ? (json['production_companies'] as List)
                .map((genreJson) => ProductionCompanyDto.fromJson(genreJson))
                .toList()
            : [],
        spokenLanguageDtoList: json['spoken_languages'] is List
            ? (json['spoken_languages'] as List)
                .map((genreJson) => LanguageDto.fromJson(genreJson))
                .toList()
            : [],
        status: json['status'],
        homePage: json['home_page'],
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
        voteCount: json['vote_count'],
      );
  Movie toDomain() => Movie(
        id: id,
        adult: adult ?? false,
        budget: budget ?? 0,
        movieGenreList: movieGenreDtoList
            .map((movieGenreDto) => movieGenreDto.toDomain())
            .toList(),
        productionCompanyList: productionCompanyDtoList
            .map((productionCompanyDto) => productionCompanyDto.toDomain())
            .toList(),
        spokenLanguageList: spokenLanguageDtoList
            .map((languageDto) => languageDto.toDomain())
            .toList(),
        status: status ?? '',
        homePage: homePage ?? '',
        originalLanguage: originalLanguage ?? '',
        originalTitle: originalTitle ?? '',
        overview: overview ?? '',
        popularity: popularity ?? 0,
        posterPath: posterPath ?? '',
        backdropPath: backdropPath ?? '',
        releaseDate: releaseDate ?? DateTime(1901),
        title: title ?? '',
        video: video ?? false,
        voteAverage: voteAverage ?? 0,
        voteCount: voteCount ?? 0,
      );
}
