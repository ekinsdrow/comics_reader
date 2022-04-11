// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_comics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LastComicsEventTearOff {
  const _$LastComicsEventTearOff();

  _Get getLastComicses() {
    return const _Get();
  }

  _Save saveComics({required LastComics comics}) {
    return _Save(
      comics: comics,
    );
  }
}

/// @nodoc
const $LastComicsEvent = _$LastComicsEventTearOff();

/// @nodoc
mixin _$LastComicsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLastComicses,
    required TResult Function(LastComics comics) saveComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getLastComicses,
    TResult Function(LastComics comics)? saveComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLastComicses,
    TResult Function(LastComics comics)? saveComics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) getLastComicses,
    required TResult Function(_Save value) saveComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? getLastComicses,
    TResult Function(_Save value)? saveComics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? getLastComicses,
    TResult Function(_Save value)? saveComics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastComicsEventCopyWith<$Res> {
  factory $LastComicsEventCopyWith(
          LastComicsEvent value, $Res Function(LastComicsEvent) then) =
      _$LastComicsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LastComicsEventCopyWithImpl<$Res>
    implements $LastComicsEventCopyWith<$Res> {
  _$LastComicsEventCopyWithImpl(this._value, this._then);

  final LastComicsEvent _value;
  // ignore: unused_field
  final $Res Function(LastComicsEvent) _then;
}

/// @nodoc
abstract class _$GetCopyWith<$Res> {
  factory _$GetCopyWith(_Get value, $Res Function(_Get) then) =
      __$GetCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCopyWithImpl<$Res> extends _$LastComicsEventCopyWithImpl<$Res>
    implements _$GetCopyWith<$Res> {
  __$GetCopyWithImpl(_Get _value, $Res Function(_Get) _then)
      : super(_value, (v) => _then(v as _Get));

  @override
  _Get get _value => super._value as _Get;
}

/// @nodoc

class _$_Get implements _Get {
  const _$_Get();

  @override
  String toString() {
    return 'LastComicsEvent.getLastComicses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Get);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLastComicses,
    required TResult Function(LastComics comics) saveComics,
  }) {
    return getLastComicses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getLastComicses,
    TResult Function(LastComics comics)? saveComics,
  }) {
    return getLastComicses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLastComicses,
    TResult Function(LastComics comics)? saveComics,
    required TResult orElse(),
  }) {
    if (getLastComicses != null) {
      return getLastComicses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) getLastComicses,
    required TResult Function(_Save value) saveComics,
  }) {
    return getLastComicses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? getLastComicses,
    TResult Function(_Save value)? saveComics,
  }) {
    return getLastComicses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? getLastComicses,
    TResult Function(_Save value)? saveComics,
    required TResult orElse(),
  }) {
    if (getLastComicses != null) {
      return getLastComicses(this);
    }
    return orElse();
  }
}

abstract class _Get implements LastComicsEvent {
  const factory _Get() = _$_Get;
}

/// @nodoc
abstract class _$SaveCopyWith<$Res> {
  factory _$SaveCopyWith(_Save value, $Res Function(_Save) then) =
      __$SaveCopyWithImpl<$Res>;
  $Res call({LastComics comics});

  $LastComicsCopyWith<$Res> get comics;
}

/// @nodoc
class __$SaveCopyWithImpl<$Res> extends _$LastComicsEventCopyWithImpl<$Res>
    implements _$SaveCopyWith<$Res> {
  __$SaveCopyWithImpl(_Save _value, $Res Function(_Save) _then)
      : super(_value, (v) => _then(v as _Save));

  @override
  _Save get _value => super._value as _Save;

  @override
  $Res call({
    Object? comics = freezed,
  }) {
    return _then(_Save(
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as LastComics,
    ));
  }

  @override
  $LastComicsCopyWith<$Res> get comics {
    return $LastComicsCopyWith<$Res>(_value.comics, (value) {
      return _then(_value.copyWith(comics: value));
    });
  }
}

/// @nodoc

class _$_Save implements _Save {
  const _$_Save({required this.comics});

  @override
  final LastComics comics;

  @override
  String toString() {
    return 'LastComicsEvent.saveComics(comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Save &&
            (identical(other.comics, comics) || other.comics == comics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comics);

  @JsonKey(ignore: true)
  @override
  _$SaveCopyWith<_Save> get copyWith =>
      __$SaveCopyWithImpl<_Save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLastComicses,
    required TResult Function(LastComics comics) saveComics,
  }) {
    return saveComics(comics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getLastComicses,
    TResult Function(LastComics comics)? saveComics,
  }) {
    return saveComics?.call(comics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLastComicses,
    TResult Function(LastComics comics)? saveComics,
    required TResult orElse(),
  }) {
    if (saveComics != null) {
      return saveComics(comics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Get value) getLastComicses,
    required TResult Function(_Save value) saveComics,
  }) {
    return saveComics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Get value)? getLastComicses,
    TResult Function(_Save value)? saveComics,
  }) {
    return saveComics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Get value)? getLastComicses,
    TResult Function(_Save value)? saveComics,
    required TResult orElse(),
  }) {
    if (saveComics != null) {
      return saveComics(this);
    }
    return orElse();
  }
}

abstract class _Save implements LastComicsEvent {
  const factory _Save({required LastComics comics}) = _$_Save;

  LastComics get comics;
  @JsonKey(ignore: true)
  _$SaveCopyWith<_Save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LastComicsStateTearOff {
  const _$LastComicsStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Error error({required String error}) {
    return _Error(
      error: error,
    );
  }

  _Comicses comicses({required List<LastComics> comicses}) {
    return _Comicses(
      comicses: comicses,
    );
  }
}

/// @nodoc
const $LastComicsState = _$LastComicsStateTearOff();

/// @nodoc
mixin _$LastComicsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LastComics> comicses) comicses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Comicses value) comicses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastComicsStateCopyWith<$Res> {
  factory $LastComicsStateCopyWith(
          LastComicsState value, $Res Function(LastComicsState) then) =
      _$LastComicsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LastComicsStateCopyWithImpl<$Res>
    implements $LastComicsStateCopyWith<$Res> {
  _$LastComicsStateCopyWithImpl(this._value, this._then);

  final LastComicsState _value;
  // ignore: unused_field
  final $Res Function(LastComicsState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LastComicsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LastComicsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LastComics> comicses) comicses,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Comicses value) comicses,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LastComicsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LastComicsStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LastComicsState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LastComics> comicses) comicses,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Comicses value) comicses,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LastComicsState {
  const factory _Error({required String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ComicsesCopyWith<$Res> {
  factory _$ComicsesCopyWith(_Comicses value, $Res Function(_Comicses) then) =
      __$ComicsesCopyWithImpl<$Res>;
  $Res call({List<LastComics> comicses});
}

/// @nodoc
class __$ComicsesCopyWithImpl<$Res> extends _$LastComicsStateCopyWithImpl<$Res>
    implements _$ComicsesCopyWith<$Res> {
  __$ComicsesCopyWithImpl(_Comicses _value, $Res Function(_Comicses) _then)
      : super(_value, (v) => _then(v as _Comicses));

  @override
  _Comicses get _value => super._value as _Comicses;

  @override
  $Res call({
    Object? comicses = freezed,
  }) {
    return _then(_Comicses(
      comicses: comicses == freezed
          ? _value.comicses
          : comicses // ignore: cast_nullable_to_non_nullable
              as List<LastComics>,
    ));
  }
}

/// @nodoc

class _$_Comicses implements _Comicses {
  const _$_Comicses({required this.comicses});

  @override
  final List<LastComics> comicses;

  @override
  String toString() {
    return 'LastComicsState.comicses(comicses: $comicses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comicses &&
            const DeepCollectionEquality().equals(other.comicses, comicses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(comicses));

  @JsonKey(ignore: true)
  @override
  _$ComicsesCopyWith<_Comicses> get copyWith =>
      __$ComicsesCopyWithImpl<_Comicses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<LastComics> comicses) comicses,
  }) {
    return comicses(this.comicses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
  }) {
    return comicses?.call(this.comicses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<LastComics> comicses)? comicses,
    required TResult orElse(),
  }) {
    if (comicses != null) {
      return comicses(this.comicses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Comicses value) comicses,
  }) {
    return comicses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
  }) {
    return comicses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comicses value)? comicses,
    required TResult orElse(),
  }) {
    if (comicses != null) {
      return comicses(this);
    }
    return orElse();
  }
}

abstract class _Comicses implements LastComicsState {
  const factory _Comicses({required List<LastComics> comicses}) = _$_Comicses;

  List<LastComics> get comicses;
  @JsonKey(ignore: true)
  _$ComicsesCopyWith<_Comicses> get copyWith =>
      throw _privateConstructorUsedError;
}
