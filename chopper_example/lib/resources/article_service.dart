import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';

part "article_service.chopper.dart";

@ChopperApi(baseUrl: "/v1")
abstract class ArticlesService extends ChopperService {
  static ArticlesService create([ChopperClient client]) =>
      _$ArticlesService(client);

  @Get(path: "/get")
  Future<Response> fetch({@required @Query('isbn') int isbn});
}
