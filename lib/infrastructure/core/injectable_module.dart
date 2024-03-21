import 'package:injectable/injectable.dart';
import 'package:kueski_movies_app/infrastructure/core/movie_client.dart';
import 'package:localstore/localstore.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InjectableModule {
  /// injection of shared Preferences instance
  @lazySingleton
  Future<SharedPreferences> get sharedPreferences async =>
      await SharedPreferences.getInstance();

  @lazySingleton
  MovieClient get movieClient => MovieClient();

  @lazySingleton
  Localstore get locaStoreInstance => Localstore.instance;
}
