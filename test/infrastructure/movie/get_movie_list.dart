import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:kueski_movies_app/infrastructure/core/movie_client.dart';
import 'package:kueski_movies_app/infrastructure/movie/movie_repository.dart';
import 'package:localstore/localstore.dart';

import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

// class MockMovieRepository extends Mock implements MovieRepository {}

void main() {
  // MockMovieRepository movieRepository;
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio);

  dio.httpClientAdapter = dioAdapter;

  late MovieRepository movieRepository;

  setUp(() {
    movieRepository = MovieRepository(dio as MovieClient, Localstore.instance);
  });

  test(
    'should return right<list<MovieListItem>> when a correct token is passed',
    () async {
      // arrange
      const path =
          'https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc';
      const apiKey = 'testingkey';
      dioAdapter.onGet(
        path,
        queryParameters: {'Authorization': 'Bearer $apiKey'},
        (request) => request.reply(200, {
          "page": 1,
          "results": [],
          "total_pages": 43117,
          "total_results": 862326
        }),
      );

      // act
      final result =
          await movieRepository.getMovieList(actualPage: 1, isPlaying: false);
      // assert
      expect(result, const Right([]));
    },
  );
}
