import 'package:movies_app/movies/domain/entities/movies.dart';

class MoviesModel extends Movies {
  const MoviesModel(
      {required super.id,
      required super.title,
      required super.overView,
      required super.backdropPath,
      required super.genreIds,
      required super.voteAverage,
      required super.releaseDate});

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
        id: json["id"],
        title: json["original_title"],
        overView: json["overview"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
        // TODO : Check This
        voteAverage: json["vote_average"].toDouble(),
        releaseDate: json["release_date"],
      );
}
