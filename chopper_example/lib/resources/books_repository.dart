import 'package:chopper_example/resources/api/books_service.dart';
import 'package:chopper_example/resources/api/chopper_client_creator.dart';

import 'api/response/book_response.dart';

class BooksRepository {
  factory BooksRepository() => BooksRepository._();

  BooksRepository._();

  final service = BooksService.create(ChopperClientCreator.create());

  Future<List<BookResponse>> fetchBook() async {
    final response = await service.fetch(isbn: "4049123185,4048937359");
    if (response.isSuccessful) {
      return response.body;
    } else {
      throw Exception();
    }
  }
}
