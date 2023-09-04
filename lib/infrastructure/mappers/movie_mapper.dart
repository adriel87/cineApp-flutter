import 'package:cinama_app/infrastructure/models/moviedb/movie_moviedb.dart';

import '../../domain/entities/movie.dart';

class MovieMapper {
  static final String noPosterFoundUrl = 'https://www.reelviews.net/resources/img/default_poster.jpg';
  static final String basePathImage = 'https://image.tmdb.org/t/p/w500';
  
  static Movie movieDbToEntity(MovieFromMovieDb movieFromMovieDb) => Movie(
      adult: movieFromMovieDb.adult,
      backdropPath: movieFromMovieDb.backdropPath != '' 
        ? basePathImage + movieFromMovieDb.backdropPath
        : noPosterFoundUrl,
      genreIds: movieFromMovieDb.genreIds.map((id) => id.toString()).toList(),
      id: movieFromMovieDb.id,
      originalLanguage: movieFromMovieDb.originalLanguage,
      originalTitle: movieFromMovieDb.originalTitle,
      overview: movieFromMovieDb.overview,
      popularity: movieFromMovieDb.popularity,
      posterPath: movieFromMovieDb.posterPath != '' 
        ? basePathImage + movieFromMovieDb.backdropPath
        : 'noPosterFoundUrl',
      releaseDate: movieFromMovieDb.releaseDate,
      title: movieFromMovieDb.title,
      video: movieFromMovieDb.video,
      voteAverage: movieFromMovieDb.voteAverage,
      voteCount: movieFromMovieDb.voteCount);
}
