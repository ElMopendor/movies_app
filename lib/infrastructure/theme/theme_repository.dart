import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kueski_movies_app/domain/theme/i_theme_repository.dart';
import 'package:kueski_movies_app/domain/theme/theme_exceptions.dart';
import 'package:kueski_movies_app/infrastructure/theme/theme_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IThemeRepository)
class ThemeRepository implements IThemeRepository {
  SharedPreferences sharedPreferences;

  ThemeRepository(this.sharedPreferences);

  /// Saves the selected Theme to Local Storage
  ///
  /// Throws an [Exception] if shared preferences can't save the string
  @override
  Future<Either<ThemeException, Unit>> setThemeToLocal(
      {SelectedTheme theme = SelectedTheme.defaultTheme}) async {
    try {
      await sharedPreferences.setString('theme', theme.name);
      return right(unit);
    } catch (e) {
      return left(const ThemeException.cantSaveThemeToLocal());
    }
  }

  /// Gets the selected Theme from Local Storage
  ///
  /// Throws an [Exception] if shared preferences can't read the theme string
  @override
  Either<ThemeException, SelectedTheme> getThemeFromLocal() {
    try {
      final themeName = sharedPreferences.getString('theme');
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
