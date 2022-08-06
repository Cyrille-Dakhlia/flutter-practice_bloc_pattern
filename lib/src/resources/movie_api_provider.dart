import 'dart:convert';

import 'package:http/http.dart' show Client;

import '../models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'e7cdd82b9bf0b47ddb05712e623c4690';

  Future<ItemModel> fetchPopularMovieList() async {
    print('Fetching movie list...');

    final response = await client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=$_apiKey'));

    print(response.body.toString());

    if (response.statusCode == 200) {
      return ItemModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch movie list.');
    }
  }
}
