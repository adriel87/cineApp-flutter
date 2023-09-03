
import 'package:cinama_app/domain/datasources/movies_datasource.dart';
import 'package:cinama_app/domain/entities/movie.dart';
import 'package:cinama_app/domain/repositories/movies_repositorie.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource moviesDatasources;

  MovieRepositoryImpl(this.moviesDatasources);


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
      return moviesDatasources.getNowPlaying(page: page);
  }

}