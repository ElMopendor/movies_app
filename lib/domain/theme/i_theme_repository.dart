import 'package:kueski_movies_app/domain/theme/theme_exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:kueski_movies_app/infrastructure/theme/theme_enum.dart';

abstract class IThemeRepository {
  Future<Either<ThemeException, Unit>> setThemeToLocal(
      {SelectedTheme theme = SelectedTheme.defaultTheme});
  Either<ThemeException, SelectedTheme> getThemeFromLocal();
}
