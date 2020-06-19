import 'package:chopper_example/models/article.dart';

class ArticleRepository {
  factory ArticleRepository() => ArticleRepository._();

  ArticleRepository._();

  List<Article> fetchArticle() {
    return [
      Article(title: "test1", description: "des", isFavorite: false),
      Article(title: "test2", description: "des", isFavorite: false),
      Article(title: "test3", description: "des", isFavorite: false),
      Article(title: "test4", description: "des", isFavorite: false),
      Article(title: "test5", description: "des", isFavorite: false),
      Article(title: "test6", description: "des", isFavorite: false),
      Article(title: "test7", description: "des", isFavorite: false),
      Article(title: "test8", description: "des", isFavorite: false),
      Article(title: "test9", description: "des", isFavorite: false),
      Article(title: "test10", description: "des", isFavorite: false),
      Article(title: "test11", description: "des", isFavorite: false),
    ];
  }
}
