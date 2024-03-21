import 'package:go_router/go_router.dart';
import 'package:kueski_movies_app/presentation/movie/movie_page.dart';

import 'package:kueski_movies_app/presentation/overview/overview_page.dart';

final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      redirect: (_, __) => '/movies',
    ),
    GoRoute(
      path: '/movies',
      builder: (context, state) => const OverviewPage(),
    ),
    GoRoute(
      path: '/movies/:movieId',
      builder: (context, state) =>
          MoviePage(id: int.parse(state.pathParameters['movieId'] ?? "-1")),
    ),
  ],
);
