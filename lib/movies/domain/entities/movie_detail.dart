import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final int id;
  final String title;
  final String overView;
  final String releaseDate;
  final int runTime;
  final List<Genres> genres;
  final String voteAverage;

  const MovieDetail({
    required this.backdropPath,
    required this.id,
    required this.title,
    required this.overView,
    required this.releaseDate,
    required this.runTime,
    required this.genres,
    required this.voteAverage,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        backdropPath,
        id,
        title,
        releaseDate,
        overView,
        runTime,
        voteAverage,
        genres
      ];
}
