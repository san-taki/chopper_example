// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) {
  return BookResponse(
    summary: json['summary'] == null
        ? null
        : SummaryResponse.fromJson(json['summary'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BookResponseToJson(BookResponse instance) =>
    <String, dynamic>{
      'summary': instance.summary,
    };
