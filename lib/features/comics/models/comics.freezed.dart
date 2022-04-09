// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComicsTearOff {
  const _$ComicsTearOff();

  _Comics call({required String name, required List<File> images}) {
    return _Comics(
      name: name,
      images: images,
    );
  }
}

/// @nodoc
const $Comics = _$ComicsTearOff();

/// @nodoc
mixin _$Comics {
  String get name => throw _privateConstructorUsedError;
  List<File> get images => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicsCopyWith<Comics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsCopyWith<$Res> {
  factory $ComicsCopyWith(Comics value, $Res Function(Comics) then) =
      _$ComicsCopyWithImpl<$Res>;
  $Res call({String name, List<File> images});
}

/// @nodoc
class _$ComicsCopyWithImpl<$Res> implements $ComicsCopyWith<$Res> {
  _$ComicsCopyWithImpl(this._value, this._then);

  final Comics _value;
  // ignore: unused_field
  final $Res Function(Comics) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc
abstract class _$ComicsCopyWith<$Res> implements $ComicsCopyWith<$Res> {
  factory _$ComicsCopyWith(_Comics value, $Res Function(_Comics) then) =
      __$ComicsCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<File> images});
}

/// @nodoc
class __$ComicsCopyWithImpl<$Res> extends _$ComicsCopyWithImpl<$Res>
    implements _$ComicsCopyWith<$Res> {
  __$ComicsCopyWithImpl(_Comics _value, $Res Function(_Comics) _then)
      : super(_value, (v) => _then(v as _Comics));

  @override
  _Comics get _value => super._value as _Comics;

  @override
  $Res call({
    Object? name = freezed,
    Object? images = freezed,
  }) {
    return _then(_Comics(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_Comics implements _Comics {
  _$_Comics({required this.name, required this.images});

  @override
  final String name;
  @override
  final List<File> images;

  @override
  String toString() {
    return 'Comics(name: $name, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comics &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  _$ComicsCopyWith<_Comics> get copyWith =>
      __$ComicsCopyWithImpl<_Comics>(this, _$identity);
}

abstract class _Comics implements Comics {
  factory _Comics({required String name, required List<File> images}) =
      _$_Comics;

  @override
  String get name;
  @override
  List<File> get images;
  @override
  @JsonKey(ignore: true)
  _$ComicsCopyWith<_Comics> get copyWith => throw _privateConstructorUsedError;
}
