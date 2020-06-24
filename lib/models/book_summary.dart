import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_summary.freezed.dart';

part 'book_summary.g.dart';

@freezed
abstract class BookSummary with _$BookSummary {
  const factory BookSummary(
      {@required String isbn,
      @required String title,
      @required String volume,
      @required String series,
      @required String publisher,
      @required String pubdate,
      @required String cover,
      @required String author,
      @Default(false) bool isFavorite}) = _BookSummary;

  factory BookSummary.fromJson(Map<String, dynamic> json) =>
      _$BookSummaryFromJson(json);
}
