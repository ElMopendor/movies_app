import 'package:flutter/material.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:kueski_movies_app/domain/movie/movie_list_item.dart';
import 'package:kueski_movies_app/presentation/overview/widgets/movie_list_item_widget.dart';

class MovieGridItemWidget extends StatelessWidget {
  const MovieGridItemWidget({super.key, required this.movieListItem});

  final MovieListItem movieListItem;

  @override
  Widget build(BuildContext context) {
    final imageRoute = dotenv.env['IMAGES_URL']! + movieListItem.posterPath;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary.withOpacity(.50),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0),
              Colors.black.withOpacity(.9),
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, .9, 1],
          ),
          image: DecorationImage(
            image: NetworkImage(imageRoute),
            onError: (context, stacktrace) {},
          ),
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
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: IsFavouriteWidget(movieListItem: movieListItem)),
                Spacer(),
                Text(
                  movieListItem.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(width: 5),
                PopularityWidget(
                  popularity: movieListItem.popularity.toString(),
                  averageStar: movieListItem.voteAverage.toString(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PopularityWidget extends StatelessWidget {
  const PopularityWidget(
      {super.key, required this.popularity, required this.averageStar});

  final String popularity;
  final String averageStar;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/icons/people.svg', width: 10, height: 10),
            const SizedBox(width: 5),
            Text(
              popularity,
              style:
                  TextStyle(color: Colors.white.withOpacity(.7), fontSize: 8),
            ),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(
              'assets/icons/star_white.svg',
              width: 10,
              height: 10,
              colorFilter:
                  const ColorFilter.mode(Colors.yellow, BlendMode.srcIn),
            ),
            const SizedBox(width: 5),
            Text(
              averageStar,
              style:
                  TextStyle(color: Colors.white.withOpacity(.7), fontSize: 8),
            ),
          ],
        ),
      ],
    );
  }
}
