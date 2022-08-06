import 'package:practice_bloc_pattern/src/models/item_model.dart';
import 'package:practice_bloc_pattern/src/resources/movie_api_provider.dart';

class Repository {
  final movieApiProvider = MovieApiProvider();

  Future<ItemModel> fetchPopularMovies() =>
      movieApiProvider.fetchPopularMovieList();
}
