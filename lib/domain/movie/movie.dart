import 'package:kueski_movies_app/domain/movie/language.dart';
import 'package:kueski_movies_app/domain/movie/movie_genre.dart';
import 'package:kueski_movies_app/domain/movie/production_company.dart';

class Movie {
  Movie({
    required this.id,
    required this.adult,
    required this.budget,
    required this.movieGenreList,
    required this.productionCompanyList,
    required this.spokenLanguageList,
    required this.status,
    required this.homePage,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.backdropPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
    this.isFavourite,
  });

  final int id;
  final bool adult;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String backdropPath;
  final DateTime releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;
  final int budget;
  final List<MovieGenre> movieGenreList;
  final List<ProductionCompany> productionCompanyList;
  final List<Language> spokenLanguageList;
  final String status;
  final String homePage;
  String? isFavourite;

  void makeFavourite(String aIsFavourite) => isFavourite = aIsFavourite;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
