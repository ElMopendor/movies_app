import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:kueski_movies_app/application/movie/movie_details_watcher_cubit/movie_details_watcher_cubit.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/domain/movie/movie.dart';
import 'package:kueski_movies_app/injection.dart';
import 'package:kueski_movies_app/presentation/core/logo.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/tag_widget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({required this.id, super.key});

  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MovieDetailsWatcherCubit>()..getMovieData(id),
      child: MoviePageWidget(),
    );
  }
}

class MoviePageWidget extends StatelessWidget {
  const MoviePageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MovieDetailsWatcherCubit, MovieDetailsWatcherState>(
        listener: (context, state) {
          state.maybeMap(
              loadFailure: (f) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'an error has encountered. Terminating ${f.exception.maybeMap(serverError: (ff) => ff.statusMessage, orElse: () => '')}'),
                  ),
                );
              },
              orElse: () {});
        },
        builder: (context, state) {
          return state.maybeMap(
              orElse: () => Center(child: CircularProgressIndicator()),
              loaded: (s) {
                final posterPath =
                    dotenv.env['IMAGES_URL']! + s.movie.posterPath;
                final backdropPath =
                    dotenv.env['IMAGES_URL']! + s.movie.backdropPath;

                return Column(
                  children: [
                    DetailsHeaderWidget(
                        backdropPath: backdropPath, movie: s.movie),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  posterPath,
                                  height: 240,
                                  errorBuilder: (context, object, stacktrace) {
                                    return SvgPicture.asset(
                                        'assets/icons/kueski_logo.svg',
                                        height: 240);
                                  },
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        s.movie.overview,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Status',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            s.movie.status,
                                            style:
                                                const TextStyle(fontSize: 12),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Release Date',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            DateFormat('yyyy-MM-dd')
                                                .format(s.movie.releaseDate),
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        'Companies',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(height: 5),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Wrap(
                                          children:
                                              s.movie.productionCompanyList
                                                  .map((item) => TagWidget(
                                                        text: item.name
                                                            .split(' ')
                                                            .first,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondary,
                                                        textColor: Colors.white,
                                                      ))
                                                  .toList(),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        'Languages',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(height: 5),
                                      Wrap(
                                        children: s.movie.spokenLanguageList
                                            .map((item) => TagWidget(
                                                  text: item.englishName
                                                      .split(' ')
                                                      .first,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                  textColor: Colors.white,
                                                ))
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}

class DetailsHeaderWidget extends StatelessWidget {
  const DetailsHeaderWidget({
    super.key,
    required this.backdropPath,
    required this.movie,
  });

  final String backdropPath;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          backdropPath,
          height: 250,
          errorBuilder: (context, object, stacktrace) {
            return SvgPicture.asset(
              'assets/icons/kueski_logo.svg',
              height: 250,
            );
          },
          fit: BoxFit.fitHeight,
        ),
        Container(
            padding: const EdgeInsets.all(20),
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(.9),
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0, .99, 1],
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      const KueskiLogo(),
                      const Spacer(),
                      IsFavouriteMovieWidget(movie: movie),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/people.svg',
                              width: 10, height: 10),
                          const SizedBox(width: 5),
                          Text(
                            '${movie.popularity.toString()} M',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                          const SizedBox(width: 10),
                          SvgPicture.asset(
                            'assets/icons/star_white.svg',
                            width: 10,
                            height: 10,
                            colorFilter: const ColorFilter.mode(
                                Colors.yellow, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            movie.voteAverage.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Wrap(
                      children: movie.movieGenreList
                          .map((item) => TagWidget(
                                text: item.name,
                                color: Theme.of(context).colorScheme.secondary,
                                textColor: Colors.white,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

class IsFavouriteMovieWidget extends HookWidget {
  const IsFavouriteMovieWidget({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final movieList = useState(movie.isFavourite ?? 'NO_ARRIVE_FRONT');
    return InkWell(
      onTap: () {
        context
            .read<MovieListWatcherCubit>()
            .setFavourite(movie.id, left(movie), movieList.value);
        movieList.value = movieList.value == 'YES' ? "NO_FROM_FRONT" : 'YES';
      },
      child: SvgPicture.asset(
        'assets/icons/star_white.svg',
        colorFilter: ColorFilter.mode(
            movieList.value == 'YES' ? Colors.yellow : Colors.white,
            BlendMode.srcIn),
      ),
    );
  }
}
