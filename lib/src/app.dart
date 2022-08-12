import 'package:flutter/material.dart';
import 'package:practice_bloc_pattern/src/ui/movie_list.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Center(
          child: MovieList(),
        ),
      ),
    );
  }
}
