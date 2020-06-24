import 'package:chopper_example/models/book.dart';
import 'package:chopper_example/resources/books_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_screen_state.freezed.dart';

part 'home_screen_state.g.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.blank() = Blank;
  const factory HomeScreenState.error() = Error;
  const factory HomeScreenState.ideal({@required IdealData data}) = Ideal;

  factory HomeScreenState.fromJson(Map<String, dynamic> json) =>
      _$HomeScreenStateFromJson(json);
}

class HomeScreenStateNotifier extends StateNotifier<HomeScreenState> {
  final BooksRepository repository;

  final String isbn =
      "4049123185,4048937359,9784904209882,9784048915830,4048936360,4049124378,4048939823,4049120658";

  HomeScreenStateNotifier(this.repository)
      : super(const HomeScreenState.blank()) {
    _initialize();
  }

  _initialize() async {
    var initBooks = await repository.fetchBook(isbn);
    state = HomeScreenState.ideal(
      data: IdealData(books: initBooks.map((book) => book.toEntity()).toList()),
    );
  }

  paging(List<Book> pagingBooks) {
    // FIXME: かんがえちゅう
//    state.when(
//      blank: () => {},
//      error: () => {},
//      ideal: (IdealData data) => {
//      state = state copyWith(books: [...state.books, ...pagingBooks]);
//    },
//    );
  }

  favorite(String isbn) {
    state.when(
        blank: null,
        error: null,
        ideal: (IdealData data) => _favorite(state as Ideal, isbn));
  }

  _favorite(Ideal idealState, String isbn) {
    var newBooks = idealState.data.books.map((book) {
      if (book.summary.isbn == isbn) {
        return book.copyWith(
            summary:
                book.summary.copyWith(isFavorite: !book.summary.isFavorite));
      } else {
        return book;
      }
    });
    state = idealState.copyWith(
        data: idealState.data.copyWith(books: [...newBooks]));
  }
}

@freezed
abstract class IdealData with _$IdealData {
  const factory IdealData({@required List<Book> books}) = _IdealData;

  factory IdealData.fromJson(Map<String, dynamic> json) =>
      _$IdealDataFromJson(json);
}
