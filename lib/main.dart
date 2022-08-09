import 'package:flutter/material.dart';
import 'package:test_mvvm_base/screens/movie_screen.dart';
import 'package:test_mvvm_base/viewmodels/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies MVVM Example",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal),
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: MovieListPage(),
      ),
    );
  }
}
