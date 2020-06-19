import 'package:chopper_example/models/book_summary.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

part 'book.g.dart';

@freezed
abstract class Book with _$Book {
  const factory Book({
    // summary以外も引数はあるが今回はパースしない
    @required BookSummary summary
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}