import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_bloc_pattern/src/blocs/movies_bloc.dart';

import '../models/item_model.dart';

class MovieList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bloc.fetchPopularMovies();

    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movies'),
      ),
      body: StreamBuilder(
        stream: bloc.popularMovies,
        builder: (context, AsyncSnapshot<ItemModel> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return Center(
              child: CupertinoActivityIndicator(
                animating: false,
              ),
            );
          }
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<ItemModel> snapshot) {
    return GridView.builder(
      itemCount: snapshot.data?.results.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Image.network(
            'https://image.tmdb.org/t/p/w185${snapshot.data?.results[index].poster_path}');
      },
    );
  }
}
