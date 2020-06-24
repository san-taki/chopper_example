// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomeScreenState _$HomeScreenStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'blank':
      return Blank.fromJson(json);
    case 'error':
      return Error.fromJson(json);
    case 'ideal':
      return Ideal.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$HomeScreenStateTearOff {
  const _$HomeScreenStateTearOff();

  Blank blank() {
    return const Blank();
  }

  Error error() {
    return const Error();
  }

  Ideal ideal({@required IdealData data}) {
    return Ideal(
      data: data,
    );
  }
}

// ignore: unused_element
const $HomeScreenState = _$HomeScreenStateTearOff();

mixin _$HomeScreenState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result error(),
    @required Result ideal(IdealData data),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result error(),
    Result ideal(IdealData data),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result error(Error value),
    @required Result ideal(Ideal value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result error(Error value),
    Result ideal(Ideal value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res>;
}

class _$HomeScreenStateCopyWithImpl<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  final HomeScreenState _value;
  // ignore: unused_field
  final $Res Function(HomeScreenState) _then;
}

abstract class $BlankCopyWith<$Res> {
  factory $BlankCopyWith(Blank value, $Res Function(Blank) then) =
      _$BlankCopyWithImpl<$Res>;
}

class _$BlankCopyWithImpl<$Res> extends _$HomeScreenStateCopyWithImpl<$Res>
    implements $BlankCopyWith<$Res> {
  _$BlankCopyWithImpl(Blank _value, $Res Function(Blank) _then)
      : super(_value, (v) => _then(v as Blank));

  @override
  Blank get _value => super._value as Blank;
}

@JsonSerializable()
class _$Blank with DiagnosticableTreeMixin implements Blank {
  const _$Blank();

  factory _$Blank.fromJson(Map<String, dynamic> json) =>
      _$_$BlankFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.blank()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeScreenState.blank'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Blank);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result error(),
    @required Result ideal(IdealData data),
  }) {
    assert(blank != null);
    assert(error != null);
    assert(ideal != null);
    return blank();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result error(),
    Result ideal(IdealData data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result error(Error value),
    @required Result ideal(Ideal value),
  }) {
    assert(blank != null);
    assert(error != null);
    assert(ideal != null);
    return blank(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result error(Error value),
    Result ideal(Ideal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BlankToJson(this)..['runtimeType'] = 'blank';
  }
}

abstract class Blank implements HomeScreenState {
  const factory Blank() = _$Blank;

  factory Blank.fromJson(Map<String, dynamic> json) = _$Blank.fromJson;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

class _$ErrorCopyWithImpl<$Res> extends _$HomeScreenStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

@JsonSerializable()
class _$Error with DiagnosticableTreeMixin implements Error {
  const _$Error();

  factory _$Error.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeScreenState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result error(),
    @required Result ideal(IdealData data),
  }) {
    assert(blank != null);
    assert(error != null);
    assert(ideal != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result error(),
    Result ideal(IdealData data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result error(Error value),
    @required Result ideal(Ideal value),
  }) {
    assert(blank != null);
    assert(error != null);
    assert(ideal != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result error(Error value),
    Result ideal(Ideal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class Error implements HomeScreenState {
  const factory Error() = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;
}

abstract class $IdealCopyWith<$Res> {
  factory $IdealCopyWith(Ideal value, $Res Function(Ideal) then) =
      _$IdealCopyWithImpl<$Res>;
  $Res call({IdealData data});

  $IdealDataCopyWith<$Res> get data;
}

class _$IdealCopyWithImpl<$Res> extends _$HomeScreenStateCopyWithImpl<$Res>
    implements $IdealCopyWith<$Res> {
  _$IdealCopyWithImpl(Ideal _value, $Res Function(Ideal) _then)
      : super(_value, (v) => _then(v as Ideal));

  @override
  Ideal get _value => super._value as Ideal;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Ideal(
      data: data == freezed ? _value.data : data as IdealData,
    ));
  }

  @override
  $IdealDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $IdealDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

@JsonSerializable()
class _$Ideal with DiagnosticableTreeMixin implements Ideal {
  const _$Ideal({@required this.data}) : assert(data != null);

  factory _$Ideal.fromJson(Map<String, dynamic> json) =>
      _$_$IdealFromJson(json);

  @override
  final IdealData data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeScreenState.ideal(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeScreenState.ideal'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ideal &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $IdealCopyWith<Ideal> get copyWith =>
      _$IdealCopyWithImpl<Ideal>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result error(),
    @required Result ideal(IdealData data),
  }) {
    assert(blank != null);
    assert(error != null);
    assert(ideal != null);
    return ideal(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result error(),
    Result ideal(IdealData data),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ideal != null) {
      return ideal(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result error(Error value),
    @required Result ideal(Ideal value),
  }) {
    assert(blank != null);
    assert(error != null);
    assert(ideal != null);
    return ideal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result error(Error value),
    Result ideal(Ideal value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ideal != null) {
      return ideal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IdealToJson(this)..['runtimeType'] = 'ideal';
  }
}

abstract class Ideal implements HomeScreenState {
  const factory Ideal({@required IdealData data}) = _$Ideal;

  factory Ideal.fromJson(Map<String, dynamic> json) = _$Ideal.fromJson;

  IdealData get data;
  $IdealCopyWith<Ideal> get copyWith;
}

IdealData _$IdealDataFromJson(Map<String, dynamic> json) {
  return _IdealData.fromJson(json);
}

class _$IdealDataTearOff {
  const _$IdealDataTearOff();

  _IdealData call({@required List<Book> books}) {
    return _IdealData(
      books: books,
    );
  }
}

// ignore: unused_element
const $IdealData = _$IdealDataTearOff();

mixin _$IdealData {
  List<Book> get books;

  Map<String, dynamic> toJson();
  $IdealDataCopyWith<IdealData> get copyWith;
}

abstract class $IdealDataCopyWith<$Res> {
  factory $IdealDataCopyWith(IdealData value, $Res Function(IdealData) then) =
      _$IdealDataCopyWithImpl<$Res>;
  $Res call({List<Book> books});
}

class _$IdealDataCopyWithImpl<$Res> implements $IdealDataCopyWith<$Res> {
  _$IdealDataCopyWithImpl(this._value, this._then);

  final IdealData _value;
  // ignore: unused_field
  final $Res Function(IdealData) _then;

  @override
  $Res call({
    Object books = freezed,
  }) {
    return _then(_value.copyWith(
      books: books == freezed ? _value.books : books as List<Book>,
    ));
  }
}

abstract class _$IdealDataCopyWith<$Res> implements $IdealDataCopyWith<$Res> {
  factory _$IdealDataCopyWith(
          _IdealData value, $Res Function(_IdealData) then) =
      __$IdealDataCopyWithImpl<$Res>;
  @override
  $Res call({List<Book> books});
}

class __$IdealDataCopyWithImpl<$Res> extends _$IdealDataCopyWithImpl<$Res>
    implements _$IdealDataCopyWith<$Res> {
  __$IdealDataCopyWithImpl(_IdealData _value, $Res Function(_IdealData) _then)
      : super(_value, (v) => _then(v as _IdealData));

  @override
  _IdealData get _value => super._value as _IdealData;

  @override
  $Res call({
    Object books = freezed,
  }) {
    return _then(_IdealData(
      books: books == freezed ? _value.books : books as List<Book>,
    ));
  }
}

@JsonSerializable()
class _$_IdealData with DiagnosticableTreeMixin implements _IdealData {
  const _$_IdealData({@required this.books}) : assert(books != null);

  factory _$_IdealData.fromJson(Map<String, dynamic> json) =>
      _$_$_IdealDataFromJson(json);

  @override
  final List<Book> books;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IdealData(books: $books)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IdealData'))
      ..add(DiagnosticsProperty('books', books));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdealData &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(books);

  @override
  _$IdealDataCopyWith<_IdealData> get copyWith =>
      __$IdealDataCopyWithImpl<_IdealData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdealDataToJson(this);
  }
}

abstract class _IdealData implements IdealData {
  const factory _IdealData({@required List<Book> books}) = _$_IdealData;

  factory _IdealData.fromJson(Map<String, dynamic> json) =
      _$_IdealData.fromJson;

  @override
  List<Book> get books;
  @override
  _$IdealDataCopyWith<_IdealData> get copyWith;
}
