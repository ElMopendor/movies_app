import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/tab_widget.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TabWidget(text: 'Popular', tab: MovieWatcherTab.Popular),
        SizedBox(width: 15),
        TabWidget(text: 'Live', tab: MovieWatcherTab.IsPlaying),
        SizedBox(width: 15),
        TabWidget(text: 'Favourites', tab: MovieWatcherTab.Favourites),
        Spacer(),
        IconGridOrListWidget(),
      ],
    );
  }
}

class IconGridOrListWidget extends StatelessWidget {
  const IconGridOrListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isGrid = context.watch<MovieListWatcherCubit>().state.isGrid;
    if (isGrid) {
      return InkWell(
          onTap: () =>
              context.read<MovieListWatcherCubit>().changeViewGridList(),
          child: SvgPicture.asset('assets/icons/grid_icon.svg'));
    }
    return InkWell(
        onTap: () => context.read<MovieListWatcherCubit>().changeViewGridList(),
        child: SvgPicture.asset('assets/icons/list_icon.svg'));
  }
}
