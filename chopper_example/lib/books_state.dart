import 'package:chopper_example/models/book.dart';
import 'package:chopper_example/resources/books_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'books_state.freezed.dart';

part 'books_state.g.dart';

@freezed
abstract class BooksState with _$BooksState {
  const factory BooksState({@Default([]) List<Book> books}) =
      _BooksState;

  factory BooksState.fromJson(Map<String, dynamic> json) =>
      _$BooksStateFromJson(json);
}

class BooksStateNotifier extends StateNotifier<BooksState> {
  final BooksRepository repository;

  BooksStateNotifier(this.repository) : super(const BooksState()) {
    _initialize();
  }

  _initialize() async {
    var initBooks = await repository.fetchBook();
    var aa = initBooks.map((e) => e.toEntity()).toList();
    state = state.copyWith(books: aa);
  }

  paging(List<Book> pagingBooks) {
    state = state.copyWith(books: [...state.books, ...pagingBooks]);
  }

  favorite(String isbn) {
    var newBooks = state.books.map((a) {
      if (a.summary.isbn == isbn) {
        return a.copyWith(summary: a.summary.copyWith(isFavorite: !a.summary.isFavorite));
      } else {
        return a;
      }
    });
    state = state.copyWith(books: [...newBooks]);
  }
}
