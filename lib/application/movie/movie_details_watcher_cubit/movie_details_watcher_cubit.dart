import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kueski_movies_app/domain/movie/i_movie_repository.dart';
import 'package:kueski_movies_app/domain/movie/movie.dart';
import 'package:kueski_movies_app/domain/movie/movie_exceptions.dart';

part 'movie_details_watcher_state.dart';
part 'movie_details_watcher_cubit.freezed.dart';

@injectable
class MovieDetailsWatcherCubit extends Cubit<MovieDetailsWatcherState> {
  MovieDetailsWatcherCubit(this._movieRepository)
      : super(const MovieDetailsWatcherState.initial());

  final IMovieRepository _movieRepository;

  Future<void> getMovieData(int id) async {
    emit(const _Loading());
    final result = await _movieRepository.getMovieDetails(movieId: id);
    emit(result.fold((f) => _LoadFailure(f), (movie) => _Loaded(movie)));
  }
}
