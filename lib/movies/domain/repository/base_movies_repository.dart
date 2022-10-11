import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import '../entities/movies.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movies>>> getNowPlaying();
  Future<Either<Failure, List<Movies>>> getPopularMovies();
  Future<Either<Failure, List<Movies>>> getTopMovies();
}
