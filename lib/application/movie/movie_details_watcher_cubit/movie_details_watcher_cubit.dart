import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details_watcher_state.dart';
part 'movie_details_watcher_cubit.freezed.dart';

class MovieDetailsWatcherCubit extends Cubit<MovieDetailsWatcherState> {
  MovieDetailsWatcherCubit() : super(MovieDetailsWatcherState.initial());
}
