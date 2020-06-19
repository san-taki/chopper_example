import 'package:chopper_example/models/article.dart';
import 'package:chopper_example/resources/article_response.dart';
import 'package:chopper_example/resources/article_service.dart';
import 'package:chopper_example/resources/chopper_client_creator.dart';

class ArticleRepository {
  factory ArticleRepository() => ArticleRepository._();

  ArticleRepository._();

  final service = ArticlesService.create(ChopperClientCreator.create());

  Future<Article> fetchArticle() async {
    final response = await service.fetch(isbn: 4049123185);
    if (response.isSuccessful) {
      return ArticleResponse.fromJson(response.body[0] as Map<String, dynamic>)
          .toEntity();
    } else {
      throw Exception();
    }
  }
}
