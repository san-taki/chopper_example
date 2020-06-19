import "dart:async";
import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';

import 'response/book_response.dart';

part 'books_service.chopper.dart';

@ChopperApi(baseUrl: "/v1")
abstract class BooksService extends ChopperService {
  static BooksService create([ChopperClient client]) =>
      _$BooksService(client);

  @Get(path: "/get")
  Future<Response<List<BookResponse>>> fetch({@required @Query('isbn') String isbn});
}
