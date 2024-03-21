part of 'movie_details_watcher_cubit.dart';

@freezed
class MovieDetailsWatcherState with _$MovieDetailsWatcherState {
  const factory MovieDetailsWatcherState.initial() = _Initial;
  const factory MovieDetailsWatcherState.loading() = _Loading;
  const factory MovieDetailsWatcherState.loaded(Movie movie) = _Loaded;
  const factory MovieDetailsWatcherState.loadFailure(MovieException exception) =
      _LoadFailure;
}
