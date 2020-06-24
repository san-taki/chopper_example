// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookSummary _$_$_BookSummaryFromJson(Map<String, dynamic> json) {
  return _$_BookSummary(
    isbn: json['isbn'] as String,
    title: json['title'] as String,
    volume: json['volume'] as String,
    series: json['series'] as String,
    publisher: json['publisher'] as String,
    pubdate: json['pubdate'] as String,
    cover: json['cover'] as String,
    author: json['author'] as String,
    isFavorite: json['isFavorite'] as bool ?? false,
  );
}

Map<String, dynamic> _$_$_BookSummaryToJson(_$_BookSummary instance) =>
    <String, dynamic>{
      'isbn': instance.isbn,
      'title': instance.title,
      'volume': instance.volume,
      'series': instance.series,
      'publisher': instance.publisher,
      'pubdate': instance.pubdate,
      'cover': instance.cover,
      'author': instance.author,
      'isFavorite': instance.isFavorite,
    };
