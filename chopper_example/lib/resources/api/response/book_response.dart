import 'package:chopper_example/models/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'summary_response.dart';

part 'book_response.g.dart';

@JsonSerializable()
class BookResponse {
  @JsonKey(name: 'summary')
  SummaryResponse summary;

  BookResponse({this.summary});

  factory BookResponse.fromJson(Map<String, dynamic> json) =>
      _$BookResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BookResponseToJson(this);

  Book toEntity() {
    return Book(summary: summary.toEntity());
  }
}
