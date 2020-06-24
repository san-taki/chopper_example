// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$BooksService extends BooksService {
  _$BooksService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = BooksService;

  @override
  Future<Response<List<BookResponse>>> fetch({String isbn}) {
    final $url = '/v1/get';
    final $params = <String, dynamic>{'isbn': isbn};
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<List<BookResponse>, BookResponse>($request);
  }
}
