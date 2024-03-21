// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart'
    as _i10;
import 'package:kueski_movies_app/application/theme/recover_and_save_theme_watcher_cubit/recover_and_save_theme_watcher_cubit.dart'
    as _i11;
import 'package:kueski_movies_app/domain/movie/i_movie_repository.dart' as _i6;
import 'package:kueski_movies_app/domain/theme/i_theme_repository.dart' as _i8;
import 'package:kueski_movies_app/infrastructure/core/injectable_module.dart'
    as _i12;
import 'package:kueski_movies_app/infrastructure/core/movie_client.dart' as _i4;
import 'package:kueski_movies_app/infrastructure/movie/movie_repository.dart'
    as _i7;
import 'package:kueski_movies_app/infrastructure/theme/theme_repository.dart'
    as _i9;
import 'package:localstore/localstore.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

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
    gh.lazySingleton<_i3.Localstore>(() => injectableModule.locaStoreInstance);
    gh.lazySingleton<_i4.MovieClient>(() => injectableModule.movieClient);
    gh.lazySingletonAsync<_i5.SharedPreferences>(
        () => injectableModule.sharedPreferences);
    gh.lazySingleton<_i6.IMovieRepository>(() => _i7.MovieRepository(
          gh<_i4.MovieClient>(),
          gh<_i3.Localstore>(),
        ));
    gh.lazySingletonAsync<_i8.IThemeRepository>(() async =>
        _i9.ThemeRepository(await getAsync<_i5.SharedPreferences>()));
    gh.factory<_i10.MovieListWatcherCubit>(
        () => _i10.MovieListWatcherCubit(gh<_i6.IMovieRepository>()));
    gh.factoryAsync<_i11.RecoverAndSaveThemeWatcherCubit>(() async =>
        _i11.RecoverAndSaveThemeWatcherCubit(
            await getAsync<_i8.IThemeRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i12.InjectableModule {}
