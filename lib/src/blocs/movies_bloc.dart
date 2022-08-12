import 'package:practice_bloc_pattern/src/models/item_model.dart';
import 'package:practice_bloc_pattern/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc {
  final _repository = Repository();
  final _moviesFetcher = PublishSubject<ItemModel>();

  Stream<ItemModel> get popularMovies => _moviesFetcher.stream;

  fetchPopularMovies() async {
    ItemModel itemModel = await _repository.fetchPopularMovies();
    _moviesFetcher.sink.add(itemModel);
  }

  dispose() {
    _moviesFetcher.close();
  }
}

final bloc = MoviesBloc();
