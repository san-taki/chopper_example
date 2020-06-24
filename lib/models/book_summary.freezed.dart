// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'book_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BookSummary _$BookSummaryFromJson(Map<String, dynamic> json) {
  return _BookSummary.fromJson(json);
}

class _$BookSummaryTearOff {
  const _$BookSummaryTearOff();

  _BookSummary call(
      {@required String isbn,
      @required String title,
      @required String volume,
      @required String series,
      @required String publisher,
      @required String pubdate,
      @required String cover,
      @required String author,
      bool isFavorite = false}) {
    return _BookSummary(
      isbn: isbn,
      title: title,
      volume: volume,
      series: series,
      publisher: publisher,
      pubdate: pubdate,
      cover: cover,
      author: author,
      isFavorite: isFavorite,
    );
  }
}

// ignore: unused_element
const $BookSummary = _$BookSummaryTearOff();

mixin _$BookSummary {
  String get isbn;
  String get title;
  String get volume;
  String get series;
  String get publisher;
  String get pubdate;
  String get cover;
  String get author;
  bool get isFavorite;

  Map<String, dynamic> toJson();
  $BookSummaryCopyWith<BookSummary> get copyWith;
}

abstract class $BookSummaryCopyWith<$Res> {
  factory $BookSummaryCopyWith(
          BookSummary value, $Res Function(BookSummary) then) =
      _$BookSummaryCopyWithImpl<$Res>;
  $Res call(
      {String isbn,
      String title,
      String volume,
      String series,
      String publisher,
      String pubdate,
      String cover,
      String author,
      bool isFavorite});
}

class _$BookSummaryCopyWithImpl<$Res> implements $BookSummaryCopyWith<$Res> {
  _$BookSummaryCopyWithImpl(this._value, this._then);

  final BookSummary _value;
  // ignore: unused_field
  final $Res Function(BookSummary) _then;

  @override
  $Res call({
    Object isbn = freezed,
    Object title = freezed,
    Object volume = freezed,
    Object series = freezed,
    Object publisher = freezed,
    Object pubdate = freezed,
    Object cover = freezed,
    Object author = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      title: title == freezed ? _value.title : title as String,
      volume: volume == freezed ? _value.volume : volume as String,
      series: series == freezed ? _value.series : series as String,
      publisher: publisher == freezed ? _value.publisher : publisher as String,
      pubdate: pubdate == freezed ? _value.pubdate : pubdate as String,
      cover: cover == freezed ? _value.cover : cover as String,
      author: author == freezed ? _value.author : author as String,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

abstract class _$BookSummaryCopyWith<$Res>
    implements $BookSummaryCopyWith<$Res> {
  factory _$BookSummaryCopyWith(
          _BookSummary value, $Res Function(_BookSummary) then) =
      __$BookSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String isbn,
      String title,
      String volume,
      String series,
      String publisher,
      String pubdate,
      String cover,
      String author,
      bool isFavorite});
}

class __$BookSummaryCopyWithImpl<$Res> extends _$BookSummaryCopyWithImpl<$Res>
    implements _$BookSummaryCopyWith<$Res> {
  __$BookSummaryCopyWithImpl(
      _BookSummary _value, $Res Function(_BookSummary) _then)
      : super(_value, (v) => _then(v as _BookSummary));

  @override
  _BookSummary get _value => super._value as _BookSummary;

  @override
  $Res call({
    Object isbn = freezed,
    Object title = freezed,
    Object volume = freezed,
    Object series = freezed,
    Object publisher = freezed,
    Object pubdate = freezed,
    Object cover = freezed,
    Object author = freezed,
    Object isFavorite = freezed,
  }) {
    return _then(_BookSummary(
      isbn: isbn == freezed ? _value.isbn : isbn as String,
      title: title == freezed ? _value.title : title as String,
      volume: volume == freezed ? _value.volume : volume as String,
      series: series == freezed ? _value.series : series as String,
      publisher: publisher == freezed ? _value.publisher : publisher as String,
      pubdate: pubdate == freezed ? _value.pubdate : pubdate as String,
      cover: cover == freezed ? _value.cover : cover as String,
      author: author == freezed ? _value.author : author as String,
      isFavorite:
          isFavorite == freezed ? _value.isFavorite : isFavorite as bool,
    ));
  }
}

@JsonSerializable()
class _$_BookSummary with DiagnosticableTreeMixin implements _BookSummary {
  const _$_BookSummary(
      {@required this.isbn,
      @required this.title,
      @required this.volume,
      @required this.series,
      @required this.publisher,
      @required this.pubdate,
      @required this.cover,
      @required this.author,
      this.isFavorite = false})
      : assert(isbn != null),
        assert(title != null),
        assert(volume != null),
        assert(series != null),
        assert(publisher != null),
        assert(pubdate != null),
        assert(cover != null),
        assert(author != null),
        assert(isFavorite != null);

  factory _$_BookSummary.fromJson(Map<String, dynamic> json) =>
      _$_$_BookSummaryFromJson(json);

  @override
  final String isbn;
  @override
  final String title;
  @override
  final String volume;
  @override
  final String series;
  @override
  final String publisher;
  @override
  final String pubdate;
  @override
  final String cover;
  @override
  final String author;
  @JsonKey(defaultValue: false)
  @override
  final bool isFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookSummary(isbn: $isbn, title: $title, volume: $volume, series: $series, publisher: $publisher, pubdate: $pubdate, cover: $cover, author: $author, isFavorite: $isFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookSummary'))
      ..add(DiagnosticsProperty('isbn', isbn))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('volume', volume))
      ..add(DiagnosticsProperty('series', series))
      ..add(DiagnosticsProperty('publisher', publisher))
      ..add(DiagnosticsProperty('pubdate', pubdate))
      ..add(DiagnosticsProperty('cover', cover))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookSummary &&
            (identical(other.isbn, isbn) ||
                const DeepCollectionEquality().equals(other.isbn, isbn)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.volume, volume) ||
                const DeepCollectionEquality().equals(other.volume, volume)) &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)) &&
            (identical(other.publisher, publisher) ||
                const DeepCollectionEquality()
                    .equals(other.publisher, publisher)) &&
            (identical(other.pubdate, pubdate) ||
                const DeepCollectionEquality()
                    .equals(other.pubdate, pubdate)) &&
            (identical(other.cover, cover) ||
                const DeepCollectionEquality().equals(other.cover, cover)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isbn) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(volume) ^
      const DeepCollectionEquality().hash(series) ^
      const DeepCollectionEquality().hash(publisher) ^
      const DeepCollectionEquality().hash(pubdate) ^
      const DeepCollectionEquality().hash(cover) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(isFavorite);

  @override
  _$BookSummaryCopyWith<_BookSummary> get copyWith =>
      __$BookSummaryCopyWithImpl<_BookSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookSummaryToJson(this);
  }
}

abstract class _BookSummary implements BookSummary {
  const factory _BookSummary(
      {@required String isbn,
      @required String title,
      @required String volume,
      @required String series,
      @required String publisher,
      @required String pubdate,
      @required String cover,
      @required String author,
      bool isFavorite}) = _$_BookSummary;

  factory _BookSummary.fromJson(Map<String, dynamic> json) =
      _$_BookSummary.fromJson;

  @override
  String get isbn;
  @override
  String get title;
  @override
  String get volume;
  @override
  String get series;
  @override
  String get publisher;
  @override
  String get pubdate;
  @override
  String get cover;
  @override
  String get author;
  @override
  bool get isFavorite;
  @override
  _$BookSummaryCopyWith<_BookSummary> get copyWith;
}
