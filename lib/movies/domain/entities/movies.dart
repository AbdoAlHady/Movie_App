import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final String title;
  final String overView;
  final String backdropPath;
  final List<int> genreIds;
  final double voteAverage;
  final String releaseDate;

  const Movies(
      {required this.id,
      required this.title,
      required this.overView,
      required this.backdropPath,
      required this.genreIds,
      required this.voteAverage,
      required this.releaseDate});

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, overView, title, voteAverage, backdropPath, genreIds, releaseDate];
}
