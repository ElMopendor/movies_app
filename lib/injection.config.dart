// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kueski_movies_app/application/theme/recover_and_save_theme_watcher_cubit/recover_and_save_theme_watcher_cubit.dart'
    as _i6;
import 'package:kueski_movies_app/domain/theme/i_theme_repository.dart' as _i4;
import 'package:kueski_movies_app/infrastructure/core/injectable_module.dart'
    as _i7;
import 'package:kueski_movies_app/infrastructure/theme/theme_repository.dart'
    as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.lazySingletonAsync<_i3.SharedPreferences>(
        () => injectableModule.sharedPreferences);
    gh.lazySingletonAsync<_i4.IThemeRepository>(() async =>
        _i5.ThemeRepository(await getAsync<_i3.SharedPreferences>()));
    gh.factoryAsync<_i6.RecoverAndSaveThemeWatcherCubit>(() async =>
        _i6.RecoverAndSaveThemeWatcherCubit(
            await getAsync<_i4.IThemeRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i7.InjectableModule {}
