import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/presentation/core/logo.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/movie_list_widget.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/prev_and_next_widget.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/tabs_widget.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isGrid = context.watch<MovieListWatcherCubit>().state.isGrid;

    return BlocListener<MovieListWatcherCubit, MovieListWatcherState>(
      listenWhen: (p, c) =>
          p.getMovieListExceptionOrSuccessOption !=
          c.getMovieListExceptionOrSuccessOption,
      listener: (context, state) {
        state.getMovieListExceptionOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (f) {
              //showing errors
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      'an error has encountered. Terminating ${f.maybeMap(serverError: (ff) => ff.statusMessage, orElse: () => '')}'),
                ),
              );
            },
            (_) {},
          ),
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Header component
                const KueskiLogo(),
                const SizedBox(height: 30),
                //Tabs
                !isGrid
                    ? const Expanded(
                        child: SingleChildScrollView(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              TabsWidget(),
                              SizedBox(height: 20),
                              //
                              MovieListWidget(),
                            ],
                          ),
                        ),
                      )
                    : const Expanded(
                        child: Column(
                          children: [
                            TabsWidget(),
                            SizedBox(height: 20),
                            //
                            MovieListWidget(),
                          ],
                        ),
                      ),

                //prev and next
                const SizedBox(height: 15),
                const PrevAndNextWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
