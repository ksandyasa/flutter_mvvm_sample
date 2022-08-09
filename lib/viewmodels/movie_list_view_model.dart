import 'package:flutter/material.dart';
import 'package:test_mvvm_base/services/web_service.dart';
import 'package:test_mvvm_base/viewmodels/movie_view_model.dart';

class MovieListViewModel extends ChangeNotifier {
  List<MovieViewModel> movies = <MovieViewModel>[];

  Future<void> fetchMovies(String keyword) async {
    final results = await WebService().fetchMovies(keyword);
    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();
    notifyListeners();
  }
}
