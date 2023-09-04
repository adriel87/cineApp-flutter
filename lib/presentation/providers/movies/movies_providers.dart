import 'package:cinama_app/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:cinama_app/domain/entities/movie.dart';


final nowPlayingMoviesProvider = StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {

  final fetchMoreMovies = ref.watch(movieRepositorieProvider).getNowPlaying;

  return MoviesNotifier(fetchMoreMovies: fetchMoreMovies);
});

typedef MovieCallback = Future<List<Movie>> Function({int page});


class MoviesNotifier extends StateNotifier<List<Movie>> {
  
  int currentPage = 0;
  MovieCallback fetchMoreMovies;

  MoviesNotifier({
    required this.fetchMoreMovies
  }):super([]);
  
  Future<void> loadNextPage() async {
    final List<Movie> movies = await fetchMoreMovies(page: ++currentPage);
    state = [...state, ...movies];

  }

}