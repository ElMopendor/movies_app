import 'package:dartz/dartz.dart';

import 'package:kueski_movies_app/domain/theme/i_theme_repository.dart';
import 'package:kueski_movies_app/domain/theme/theme_exceptions.dart';
import 'package:kueski_movies_app/infrastructure/theme/theme_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeRepository implements IThemeRepository {
  ThemeRepository();

  /// Saves the selected Theme to Local Storage
  ///
  /// Throws an [Exception] if shared preferences can't save the string
  @override
  Future<Either<ThemeException, Unit>> setThemeToLocal(
      {SelectedTheme theme = SelectedTheme.defaultTheme}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('theme', theme.name);
      return right(unit);
    } catch (e) {
      return left(const ThemeException.cantSaveThemeToLocal());
    }
  }

  /// Gets the selected Theme from Local Storage
  ///
  /// Throws an [Exception] if shared preferences can't read the theme string
  @override
  Future<Either<ThemeException, SelectedTheme>> getThemeFromLocal() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final themeName = prefs.getString('theme');
      return right(
        themeName != null
            ? SelectedTheme.values.byName(themeName)
            : SelectedTheme.defaultTheme,
      );
    } catch (e) {
      return left(const ThemeException.cantRecoverThemeFromLocal());
    }
  }
}
