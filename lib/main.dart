import 'package:flutter/material.dart';
import 'package:test_mvvm_base/screens/movie_screen.dart';
import 'package:test_mvvm_base/screens/login_screen.dart';
import 'package:test_mvvm_base/viewmodels/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Enterprise Store",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF000B89),
      ),
      home: LoginPage(),
      // home: ChangeNotifierProvider(
      //   create: (context) => MovieListViewModel(),
      //   child: MovieListPage(),
      // ),
    );
  }
}
