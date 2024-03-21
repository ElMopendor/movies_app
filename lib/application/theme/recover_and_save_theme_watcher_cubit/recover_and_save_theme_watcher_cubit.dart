import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kueski_movies_app/infrastructure/theme/theme_enum.dart';
import 'package:kueski_movies_app/infrastructure/theme/theme_repository.dart';

part 'recover_and_save_theme_watcher_state.dart';
part 'recover_and_save_theme_watcher_cubit.freezed.dart';

// @injectable
class RecoverAndSaveThemeWatcherCubit
    extends Cubit<RecoverAndSaveThemeWatcherState> {
  RecoverAndSaveThemeWatcherCubit()
      : super(const RecoverAndSaveThemeWatcherState(
            theme: SelectedTheme.defaultTheme));

  Future<void> recoverThemeFromLocal() async {
    final themeExceptionOrSuccess = await ThemeRepository().getThemeFromLocal();
    emit(
      themeExceptionOrSuccess.fold(
        (exception) => const RecoverAndSaveThemeWatcherState(
            theme: SelectedTheme.defaultTheme),
        (theme) => RecoverAndSaveThemeWatcherState(theme: theme),
      ),
    );
  }

  Future<void> saveThemeToLocal(SelectedTheme theme) async {
    final saveThemeExceptionOrSuccess =
        await ThemeRepository().setThemeToLocal(theme: theme);
    emit(
      saveThemeExceptionOrSuccess.fold(
        (exception) => const RecoverAndSaveThemeWatcherState(
            theme: SelectedTheme.defaultTheme),
        (_) => RecoverAndSaveThemeWatcherState(theme: theme),
      ),
    );
  }
}
