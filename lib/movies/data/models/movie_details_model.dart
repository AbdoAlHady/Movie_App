import 'package:movies_app/movies/data/models/genres_model.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.title,
      required super.overView,
      required super.releaseDate,
      required super.runTime,
      required super.genres,
      required super.voteAverage});
  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
          backdropPath: json['backdrop_path'],
          id: json['id'],
          title: json['title'],
          overView: json['overview'],
          releaseDate: json['release_date'],
          runTime: json['runtime'],
          genres: List<GenresModel>.from(
              json['genres'].map((x) => GenresModel.fromJson(x))),
          voteAverage: json['vote_average'].toDouble());
}
