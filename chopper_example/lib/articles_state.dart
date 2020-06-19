import 'package:chopper_example/resources/article_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

import 'models/article.dart';

part 'articles_state.freezed.dart';

part 'articles_state.g.dart';

@freezed
abstract class ArticleState with _$ArticleState {
  const factory ArticleState({@Default([]) List<Article> articles}) =
      _ArticleState;

  factory ArticleState.fromJson(Map<String, dynamic> json) =>
      _$ArticleStateFromJson(json);
}

class ArticleStateNotifier extends StateNotifier<ArticleState> {
  final ArticleRepository repository;

  ArticleStateNotifier(this.repository) : super(const ArticleState()) {
    _initialize();
  }

  _initialize() {
    var initArticles = repository.fetchArticle();
    state = state.copyWith(articles: initArticles);
  }

  paging(List<Article> pagingArticles) {
    state = state.copyWith(articles: [...state.articles, ...pagingArticles]);
  }
}
