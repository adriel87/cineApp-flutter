import 'package:dio/dio.dart';
import 'package:cinama_app/config/constant/environment.dart';
import 'package:cinama_app/domain/datasources/movies_datasource.dart';
import 'package:cinama_app/domain/entities/movie.dart';

class TmdbDatasource extends MoviesDatasource{

  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.TMDB_KEY,
      'language': 'es-ES'
    }
  ));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async{
    
    final response = await dio.get('/movie/now_playing');

    final List<Movie> movies = [];

    return [];
  }



}