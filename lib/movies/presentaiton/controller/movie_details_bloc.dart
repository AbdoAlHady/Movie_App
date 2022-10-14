import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:movies_app/movies/domain/usecases/get_recommedation_usecase.dart';

import '../../domain/entities/recommendation.dart';

part 'movie_details_event.dart';
part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendationDetails);
  }
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));

    result.fold(
        (l) => emit(state.copyWith(
            movieDetailState: RequestState.error, message: l.message)),
        (r) => emit(state.copyWith(
            movieDetailState: RequestState.loaded, movieDetail: r)));
  }

  FutureOr<void> _getRecommendationDetails(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result =
        await getRecommendationUseCase(RecommendationParameters(event.id));

    result.fold(
        (l) => emit(state.copyWith(
            recommendationState: RequestState.error, message: l.message)),
        (r) => emit(state.copyWith(
            recommendationState: RequestState.loaded, recommendation: r)));
  }
}
