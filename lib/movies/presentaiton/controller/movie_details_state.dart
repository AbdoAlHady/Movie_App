part of 'movie_details_bloc.dart';

class MovieDetailsState extends Equatable {
  final MovieDetail? movieDetail;
  final RequestState movieDetailState;
  final String message;

  const MovieDetailsState(
      {this.movieDetail,
      this.movieDetailState = RequestState.loading,
      this.message = ''});
  MovieDetailsState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailState,
    String? message,
  }) {
    return MovieDetailsState(
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailState: movieDetailState ?? this.movieDetailState,
        message: message ?? this.message);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [movieDetail, movieDetailState, message];
}
