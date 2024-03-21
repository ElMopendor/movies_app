import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/button_widget.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.text,
    required this.tab,
  });
  final String text;
  final MovieWatcherTab tab;
  @override
  Widget build(BuildContext context) {
    final selected = context.watch<MovieListWatcherCubit>().state.selectedTab;
    return CustomButtonWidget(
      text: text,
      color: selected == tab
          ? Theme.of(context).colorScheme.primary
          : const Color(0xFF585861),
      textColor: Colors.white,
      onPressed: () => context
          .read<MovieListWatcherCubit>()
          .changeTabMovieList(actualTab: tab),
    );
  }
}
