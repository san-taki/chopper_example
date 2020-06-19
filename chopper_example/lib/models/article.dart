import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

part 'article.g.dart';

@freezed
abstract class Article with _$Article {
  const factory Article({
    @required String title,
    @required String description,
    @required bool isFavorite,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
