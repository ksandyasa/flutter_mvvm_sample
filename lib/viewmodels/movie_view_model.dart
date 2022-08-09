import 'package:test_mvvm_base/models/movie.dart';

class MovieViewModel {
  final Movie movie;

  MovieViewModel({required this.movie});

  String get title {
    return this.movie.title;
  }

  String get posterUrl {
    return this.movie.posterUrl;
  }
}
