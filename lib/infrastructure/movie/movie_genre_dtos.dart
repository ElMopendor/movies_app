import 'package:kueski_movies_app/domain/movie/movie_genre.dart';

class MovieGenreDto {
  const MovieGenreDto({
    required this.id,
    this.name,
  });

  final int id;
  final String? name;

  factory MovieGenreDto.fromJson(Map<String, dynamic> json) => MovieGenreDto(
        id: json['id'],
        name: json['name'],
      );

  factory MovieGenreDto.fromDomain(MovieGenre genre) => MovieGenreDto(
        id: genre.id,
        name: genre.name,
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };

  MovieGenre toDomain() => MovieGenre(
        id: id,
        name: name ?? '',
      );
}
