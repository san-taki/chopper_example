import 'package:chopper_example/models/book_summary.dart';
import 'package:json_annotation/json_annotation.dart';

part 'summary_response.g.dart';

@JsonSerializable()
class SummaryResponse {
  @JsonKey(name: 'isbn')
  String isbn;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'volume')
  String volume;
  @JsonKey(name: 'series')
  String series;
  @JsonKey(name: 'publisher')
  String publisher;
  @JsonKey(name: 'pubdate')
  String pubdate;
  @JsonKey(name: 'cover')
  String cover;
  @JsonKey(name: 'author')
  String author;

  SummaryResponse(
      {this.isbn,
      this.cover,
      this.author,
      this.pubdate,
      this.publisher,
      this.series,
      this.volume,
      this.title});

  factory SummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$SummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryResponseToJson(this);

  BookSummary toEntity() {
    return BookSummary(
        isbn: this.isbn,
        cover: this.cover,
        author: this.author,
        pubdate: this.pubdate,
        publisher: this.publisher,
        series: this.series,
        volume: this.volume,
        title: this.title);
  }
}
