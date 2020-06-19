import 'package:chopper_example/models/article.dart';
import 'package:flutter/cupertino.dart';

class ArticleResponse {
  final Summary summary;

  ArticleResponse(this.summary);

  factory ArticleResponse.fromJson(Map<String, dynamic> json) {
    return ArticleResponse(Summary.fromJson(json['summary']));
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.summary != null) {
      data['summary'] = this.summary.toJson();
    }
    return data;
  }

  Article toEntity() {
    return Article(
        isbn: summary.isbn,
        title: summary.title,
        author: summary.author,
        volume: summary.volume,
        series: summary.series,
        pubdate: summary.pubdate,
        publisher: summary.publisher,
        cover: summary.cover,
        isFavorite: false);
  }
}

class Summary {
  final String isbn;
  final String title;
  final String volume;
  final String series;
  final String publisher;
  final String pubdate;
  final String cover;
  final String author;

  Summary(
      {@required this.isbn,
      @required this.title,
      @required this.volume,
      @required this.series,
      @required this.publisher,
      @required this.pubdate,
      @required this.cover,
      @required this.author});

  factory Summary.fromJson(Map<String, dynamic> json) {
    return Summary(
        isbn: json['isbn'],
        title: json['title'],
        volume: json['volume'],
        series: json['series'],
        publisher: json['publisher'],
        pubdate: json['pubdate'],
        cover: json['cover'],
        author: json['author']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isbn'] = this.isbn;
    data['title'] = this.title;
    data['volume'] = this.volume;
    data['series'] = this.series;
    data['publisher'] = this.publisher;
    data['pubdate'] = this.pubdate;
    data['cover'] = this.cover;
    data['author'] = this.author;
    return data;
  }
}
