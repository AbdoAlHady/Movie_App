import 'package:equatable/equatable.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();
  @override
  List<Object?> get props => [];
}

class GetNowPlayingEvent extends MoviesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GetPopularMoviesEvent extends MoviesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GetTopRatedMoviesEvent extends MoviesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
