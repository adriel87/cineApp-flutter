import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinama_app/infrastructure/datasources/tmdb_datasource.dart';
import 'package:cinama_app/infrastructure/repositories/movie_repository_impl.dart';


final movieRepositorieProvider = Provider((ref) => MovieRepositoryImpl(TmdbDatasource()));