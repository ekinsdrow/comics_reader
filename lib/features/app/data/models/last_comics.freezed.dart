// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LastComicsTearOff {
  const _$LastComicsTearOff();

  _LastComics call(
      {required String name,
      required Uint8List image,
      required DateTime date,
      required String path,
      required ComicsType comicsType}) {
    return _LastComics(
      name: name,
      image: image,
      date: date,
      path: path,
      comicsType: comicsType,
    );
  }
}

/// @nodoc
const $LastComics = _$LastComicsTearOff();

/// @nodoc
mixin _$LastComics {
  String get name => throw _privateConstructorUsedError;
  Uint8List get image => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  ComicsType get comicsType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LastComicsCopyWith<LastComics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastComicsCopyWith<$Res> {
  factory $LastComicsCopyWith(
          LastComics value, $Res Function(LastComics) then) =
      _$LastComicsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      Uint8List image,
      DateTime date,
      String path,
      ComicsType comicsType});
}

/// @nodoc
class _$LastComicsCopyWithImpl<$Res> implements $LastComicsCopyWith<$Res> {
  _$LastComicsCopyWithImpl(this._value, this._then);

  final LastComics _value;
  // ignore: unused_field
  final $Res Function(LastComics) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? path = freezed,
    Object? comicsType = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      comicsType: comicsType == freezed
          ? _value.comicsType
          : comicsType // ignore: cast_nullable_to_non_nullable
              as ComicsType,
    ));
  }
}

/// @nodoc
abstract class _$LastComicsCopyWith<$Res> implements $LastComicsCopyWith<$Res> {
  factory _$LastComicsCopyWith(
          _LastComics value, $Res Function(_LastComics) then) =
      __$LastComicsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      Uint8List image,
      DateTime date,
      String path,
      ComicsType comicsType});
}

/// @nodoc
class __$LastComicsCopyWithImpl<$Res> extends _$LastComicsCopyWithImpl<$Res>
    implements _$LastComicsCopyWith<$Res> {
  __$LastComicsCopyWithImpl(
      _LastComics _value, $Res Function(_LastComics) _then)
      : super(_value, (v) => _then(v as _LastComics));

  @override
  _LastComics get _value => super._value as _LastComics;

  @override
  $Res call({
    Object? name = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? path = freezed,
    Object? comicsType = freezed,
  }) {
    return _then(_LastComics(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      comicsType: comicsType == freezed
          ? _value.comicsType
          : comicsType // ignore: cast_nullable_to_non_nullable
              as ComicsType,
    ));
  }
}

/// @nodoc

class _$_LastComics extends _LastComics {
  _$_LastComics(
      {required this.name,
      required this.image,
      required this.date,
      required this.path,
      required this.comicsType})
      : super._();

  @override
  final String name;
  @override
  final Uint8List image;
  @override
  final DateTime date;
  @override
  final String path;
  @override
  final ComicsType comicsType;

  @override
  String toString() {
    return 'LastComics(name: $name, image: $image, date: $date, path: $path, comicsType: $comicsType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LastComics &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.comicsType, comicsType) ||
                other.comicsType == comicsType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, image, date, path, comicsType);

  @JsonKey(ignore: true)
  @override
  _$LastComicsCopyWith<_LastComics> get copyWith =>
      __$LastComicsCopyWithImpl<_LastComics>(this, _$identity);
}

abstract class _LastComics extends LastComics {
  factory _LastComics(
      {required String name,
      required Uint8List image,
      required DateTime date,
      required String path,
      required ComicsType comicsType}) = _$_LastComics;
  _LastComics._() : super._();

  @override
  String get name;
  @override
  Uint8List get image;
  @override
  DateTime get date;
  @override
  String get path;
  @override
  ComicsType get comicsType;
  @override
  @JsonKey(ignore: true)
  _$LastComicsCopyWith<_LastComics> get copyWith =>
      throw _privateConstructorUsedError;
}
