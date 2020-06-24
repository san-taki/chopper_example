// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryResponse _$SummaryResponseFromJson(Map<String, dynamic> json) {
  return SummaryResponse(
    isbn: json['isbn'] as String,
    cover: json['cover'] as String,
    author: json['author'] as String,
    pubdate: json['pubdate'] as String,
    publisher: json['publisher'] as String,
    series: json['series'] as String,
    volume: json['volume'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$SummaryResponseToJson(SummaryResponse instance) =>
    <String, dynamic>{
      'isbn': instance.isbn,
      'title': instance.title,
      'volume': instance.volume,
      'series': instance.series,
      'publisher': instance.publisher,
      'pubdate': instance.pubdate,
      'cover': instance.cover,
      'author': instance.author,
    };
