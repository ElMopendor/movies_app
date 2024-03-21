import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/button_widget.dart';

class PrevAndNextWidget extends StatelessWidget {
  const PrevAndNextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<MovieListWatcherCubit>().state;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CustomButtonWidget(
          text: 'Previous',
          color: Theme.of(context).colorScheme.primary,
          textColor: Colors.white,
          onPressed: () => context
              .read<MovieListWatcherCubit>()
              .getPrevNextMovieList(isPrev: true),
          fixedWidth: 80,
        ),
        Expanded(
          child: Center(
            child: CustomButtonWidget(
              text: state.selectedTab == MovieWatcherTab.Popular
                  ? state.actualPopularPage.toString()
                  : state.actualPlayingPage.toString(),
              color: Theme.of(context).colorScheme.secondary,
              textColor: Colors.white,
              onPressed: () {},
              fixedWidth: 40,
            ),
          ),
        ),
        CustomButtonWidget(
          text: 'Next',
          color: Theme.of(context).colorScheme.primary,
          textColor: Colors.white,
          onPressed: () =>
              context.read<MovieListWatcherCubit>().getPrevNextMovieList(),
          fixedWidth: 80,
        ),
      ],
    );
  }
}
