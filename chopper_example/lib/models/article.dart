import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

part 'article.g.dart';

@freezed
abstract class Article with _$Article {
  const factory Article(
      {@required String isbn,
      @required String title,
      @required String volume,
      @required String series,
      @required String publisher,
      @required String pubdate,
      @required String cover,
      @required String author,
      @Default(false) bool isFavorite}) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
