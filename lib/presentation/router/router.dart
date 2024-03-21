import 'package:go_router/go_router.dart';

import 'package:kueski_movies_app/presentation/overview/overview_page.dart';
import 'package:kueski_movies_app/presentation/splash/splash_page.dart';

final routerConfig = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/movies',
      builder: (context, state) => const OverviewPage(),
    ),
    // GoRoute(
    //   path: '/movies/:movieId',
    //   builder: (context, state) =>
    //       const MovieDetailsPage(id: state.pathParameters['movieId']),
    // ),
  ],
);
