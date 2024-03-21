import 'package:kueski_movies_app/domain/movie/production_company.dart';

class ProductionCompanyDto {
  const ProductionCompanyDto({
    required this.id,
    this.name,
    this.logoPath,
    this.originCountry,
  });

  final int id;
  final String? name;
  final String? logoPath;
  final String? originCountry;

  factory ProductionCompanyDto.fromJson(Map<String, dynamic> json) =>
      ProductionCompanyDto(
        id: json['id'],
        name: json['name'],
        logoPath: json['logo_path'],
        originCountry: json['origin_country'],
      );
  factory ProductionCompanyDto.fromDomain(ProductionCompany company) =>
      ProductionCompanyDto(
        id: company.id,
        name: company.name,
        logoPath: company.logoPath,
        originCountry: company.originCountry,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'logo_path': logoPath,
        'origin_country': originCountry,
      };

  ProductionCompany toDomain() => ProductionCompany(
        id: id,
        name: name ?? '',
        logoPath: logoPath ?? '',
        originCountry: originCountry ?? '',
      );
}
