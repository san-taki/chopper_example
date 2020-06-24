// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_screen_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Blank _$_$BlankFromJson(Map<String, dynamic> json) {
  return _$Blank();
}

Map<String, dynamic> _$_$BlankToJson(_$Blank instance) => <String, dynamic>{};

_$Error _$_$ErrorFromJson(Map<String, dynamic> json) {
  return _$Error();
}

Map<String, dynamic> _$_$ErrorToJson(_$Error instance) => <String, dynamic>{};

_$Ideal _$_$IdealFromJson(Map<String, dynamic> json) {
  return _$Ideal(
    data: json['data'] == null
        ? null
        : IdealData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$IdealToJson(_$Ideal instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_IdealData _$_$_IdealDataFromJson(Map<String, dynamic> json) {
  return _$_IdealData(
    books: (json['books'] as List)
        ?.map(
            (e) => e == null ? null : Book.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_IdealDataToJson(_$_IdealData instance) =>
    <String, dynamic>{
      'books': instance.books,
    };
