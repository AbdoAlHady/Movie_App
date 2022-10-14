part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  final MovieDetail? movieDetail;
  final RequestState movieDetailState;
  final String message;
  final List<Recommendation> recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  const MovieDetailsState(
      {this.movieDetail,
      this.recommendation = const [],
      this.recommendationMessage = '',
      this.recommendationState = RequestState.loading,
      this.movieDetailState = RequestState.loading,
      this.message = ''});
  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailState,
    String? message,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailsState(
      movieDetail: movieDetail ?? this.movieDetail,
      movieDetailState: movieDetailState ?? this.movieDetailState,
      message: message ?? this.message,
      recommendation: recommendation ?? this.recommendation,
      recommendationMessage:
          recommendationMessage ?? this.recommendationMessage,
      recommendationState: recommendationState ?? this.recommendationState,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        movieDetail,
        movieDetailState,
        message,
        recommendationState,
        recommendation,
        recommendationMessage
      ];
}
