class MovieGenre {
  const MovieGenre({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieGenre && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
