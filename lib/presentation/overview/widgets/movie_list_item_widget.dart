import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:kueski_movies_app/application/movie/movie_list_watcher_cubit/movie_list_watcher_cubit.dart';
import 'package:kueski_movies_app/domain/movie/movie_list_item.dart';

class MovieListItemWidget extends StatelessWidget {
  const MovieListItemWidget({super.key, required this.movieListItem});

  final MovieListItem movieListItem;

  @override
  Widget build(BuildContext context) {
    final imageRoute = dotenv.env['IMAGES_URL']! + movieListItem.posterPath;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary.withOpacity(.50),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                color: Theme.of(context).colorScheme.primary.withOpacity(.25))
          ]),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            context.push('/movies/${movieListItem.id}');
          },
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  imageRoute,
                  width: 62,
                  errorBuilder: (context, object, stacktrace) {
                    return SvgPicture.asset('assets/icons/kueski_logo.svg',
                        width: 62);
                  },
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              movieListItem.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 14),
                            ),
                          ),
                          const SizedBox(width: 10),
                          IsFavouriteWidget(movieListItem: movieListItem),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/people.svg',
                              width: 10, height: 10),
                          const SizedBox(width: 5),
                          Text(
                            '${movieListItem.popularity.toString()} M',
                            style: TextStyle(
                                color: Colors.black.withOpacity(.7),
                                fontSize: 8),
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
                            movieListItem.voteAverage.toString(),
                            style: TextStyle(
                                color: Colors.black.withOpacity(.7),
                                fontSize: 8),
                          ),
                        ],
                      ),
                      Text(
                        movieListItem.overview.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IsFavouriteWidget extends HookWidget {
  const IsFavouriteWidget({super.key, required this.movieListItem});
  final MovieListItem movieListItem;

  @override
  Widget build(BuildContext context) {
    final movieList = useState(movieListItem.isFavourite ?? 'NO_ARRIVE_FRONT');
    return InkWell(
      onTap: () {
        context.read<MovieListWatcherCubit>().setFavourite(
            movieListItem.id, right(movieListItem), movieList.value);
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
