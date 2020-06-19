import 'package:chopper_example/models/book.dart';
import 'package:chopper_example/resources/books_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'books_state.freezed.dart';

part 'books_state.g.dart';

@freezed
abstract class BooksState with _$BooksState {
  const factory BooksState({@Default([]) List<Book> books}) = _BooksState;

  factory BooksState.fromJson(Map<String, dynamic> json) =>
      _$BooksStateFromJson(json);
}

class BooksStateNotifier extends StateNotifier<BooksState> {
  final BooksRepository repository;

  String isbn =
      "4049123185,4048937359,9784904209882,9784048915830,4048936360,4049124378,4048939823,4049120658";

  BooksStateNotifier(this.repository) : super(const BooksState()) {
    _initialize();
  }

  _initialize() async {
    var initBooks = await repository.fetchBook(isbn);
    state = state.copyWith(books: initBooks.map((e) => e.toEntity()).toList());
  }

  paging(List<Book> pagingBooks) {
    state = state.copyWith(books: [...state.books, ...pagingBooks]);
  }

  favorite(String isbn) {
    var newBooks = state.books.map((book) {
      if (book.summary.isbn == isbn) {
        return book.copyWith(
            summary: book.summary.copyWith(isFavorite: !book.summary.isFavorite));
      } else {
        return book;
      }
    });
    state = state.copyWith(books: [...newBooks]);
  }
}
