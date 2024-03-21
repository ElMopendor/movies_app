import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/application/theme/recover_and_save_theme_watcher_cubit/recover_and_save_theme_watcher_cubit.dart';
import 'package:kueski_movies_app/infrastructure/theme/theme_enum.dart';
import 'package:kueski_movies_app/injection.dart';
import 'package:kueski_movies_app/presentation/core/themes.dart';
import 'package:kueski_movies_app/presentation/router/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              RecoverAndSaveThemeWatcherCubit()..recoverThemeFromLocal(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<MovieListWatcherCubit>()..changeTabMovieList(),
        )
      ],
      child: const MaterialWidget(),
    );
  }
}

class MaterialWidget extends StatelessWidget {
  const MaterialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selectedTheme =
        context.watch<RecoverAndSaveThemeWatcherCubit>().state.theme;
    final systemBrightness = MediaQuery.of(context).platformBrightness;
    return MaterialApp.router(
      routerConfig: routerConfig,
      title: "Kueski movies app",
      theme: selectedTheme == SelectedTheme.darkTheme
          ? darkTheme
          : selectedTheme == SelectedTheme.lightTheme
              ? lightTheme
              : systemBrightness == Brightness.dark
                  ? darkTheme
                  : lightTheme,
    );
  }
}
