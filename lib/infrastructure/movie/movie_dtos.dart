import 'package:intl/intl.dart';
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

  factory MovieDto.fromDomain(Movie movie) => MovieDto(
        id: movie.id,
        adult: movie.adult,
        budget: movie.budget,
        movieGenreDtoList: movie.movieGenreList
            .map((item) => MovieGenreDto.fromDomain(item))
            .toList(),
        productionCompanyDtoList: movie.productionCompanyList
            .map((item) => ProductionCompanyDto.fromDomain(item))
            .toList(),
        spokenLanguageDtoList: movie.spokenLanguageList
            .map((item) => LanguageDto.fromDomain(item))
            .toList(),
        status: movie.status,
        homePage: movie.homePage,
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
        'budget': budget,
        'genres': movieGenreDtoList.map((item) => item.toJson()).toList(),
        'production_companies':
            productionCompanyDtoList.map((item) => item.toJson()).toList(),
        'spoken_languages':
            spokenLanguageDtoList.map((item) => item.toJson()).toList(),
        'status': status,
        'home_page': homePage,
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
        'vote_count': voteCount,
      };

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
