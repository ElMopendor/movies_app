class Language {
  const Language({
    required this.englishName,
    required this.iso639_1,
    required this.name,
  });

  final String englishName;
  final String iso639_1;
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Language &&
          runtimeType == other.runtimeType &&
          englishName == other.englishName;

  @override
  int get hashCode => englishName.hashCode;
}
