import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_exceptions.freezed.dart';

@freezed
abstract class ThemeException with _$ThemeException {
  const factory ThemeException.cantRecoverThemeFromLocal() =
      _CantRecoverThemeFromLocal;
  const factory ThemeException.cantSaveThemeToLocal() = _CantSaveThemeToLocal;
}
