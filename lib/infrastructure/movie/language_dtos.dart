import 'package:kueski_movies_app/domain/movie/language.dart';

class LanguageDto {
  const LanguageDto({
    required this.englishName,
    this.iso639_1,
    this.name,
  });

  final String englishName;
  final String? iso639_1;
  final String? name;

  factory LanguageDto.fromJson(Map<String, dynamic> json) => LanguageDto(
        englishName: json['english_name'],
        iso639_1: json['iso_639_1'],
        name: json['name'],
      );
  Language toDomain() => Language(
        englishName: englishName,
        iso639_1: iso639_1 ?? '',
        name: name ?? '',
      );
}
