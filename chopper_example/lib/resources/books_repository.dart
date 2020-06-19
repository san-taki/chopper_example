import 'package:chopper_example/resources/api/books_service.dart';

import 'api/response/book_response.dart';

class BooksRepository {
  factory BooksRepository() => BooksRepository._();

  BooksRepository._();

  final service = BooksService.create(ChopperClientCreator.create());

  Future<List<BookResponse>> fetchBook(String isbn) async {
    final response = await service.fetch(isbn: isbn);
    if (response.isSuccessful) {
      return response.body;
    } else {
      throw Exception();
    }
  }
}
