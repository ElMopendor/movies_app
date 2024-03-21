import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/movie_grid_item_widget.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/movie_list_item_widget.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MovieListWatcherCubit>().state;
    final movieList = state.getMovieListExceptionOrSuccessOption
        .fold(() => [], (either) => either.fold((f) => [], (list) => list));

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.selectedTab == MovieWatcherTab.Favourites) {
      if (state.isGrid) {
        return Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
            children: state.popularMovies.values
                .map((itemList) => MovieGridItemWidget(movieListItem: itemList))
                .toList(),
          ),
        );
      }
      return Column(
        children: state.popularMovies.values
            .map((value) => MovieListItemWidget(movieListItem: value))
            .toList(),
      );
    }
    if (state.isGrid) {
      return Expanded(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
          children: movieList
              .map((itemList) => MovieGridItemWidget(movieListItem: itemList))
              .toList(),
        ),
      );
    }
    return Column(
      children: movieList
          .map((itemList) => MovieListItemWidget(movieListItem: itemList))
          .toList(),
    );
  }
}
