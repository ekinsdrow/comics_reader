// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comics_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComicsEventTearOff {
  const _$ComicsEventTearOff();

  _OpenCBZ openCBZ({required File file}) {
    return _OpenCBZ(
      file: file,
    );
  }

  _OpenFolder openFolder({required String path}) {
    return _OpenFolder(
      path: path,
    );
  }
}

/// @nodoc
const $ComicsEvent = _$ComicsEventTearOff();

/// @nodoc
mixin _$ComicsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) openCBZ,
    required TResult Function(String path) openFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File file)? openCBZ,
    TResult Function(String path)? openFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? openCBZ,
    TResult Function(String path)? openFolder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenCBZ value) openCBZ,
    required TResult Function(_OpenFolder value) openFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenCBZ value)? openCBZ,
    TResult Function(_OpenFolder value)? openFolder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenCBZ value)? openCBZ,
    TResult Function(_OpenFolder value)? openFolder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsEventCopyWith<$Res> {
  factory $ComicsEventCopyWith(
          ComicsEvent value, $Res Function(ComicsEvent) then) =
      _$ComicsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ComicsEventCopyWithImpl<$Res> implements $ComicsEventCopyWith<$Res> {
  _$ComicsEventCopyWithImpl(this._value, this._then);

  final ComicsEvent _value;
  // ignore: unused_field
  final $Res Function(ComicsEvent) _then;
}

/// @nodoc
abstract class _$OpenCBZCopyWith<$Res> {
  factory _$OpenCBZCopyWith(_OpenCBZ value, $Res Function(_OpenCBZ) then) =
      __$OpenCBZCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class __$OpenCBZCopyWithImpl<$Res> extends _$ComicsEventCopyWithImpl<$Res>
    implements _$OpenCBZCopyWith<$Res> {
  __$OpenCBZCopyWithImpl(_OpenCBZ _value, $Res Function(_OpenCBZ) _then)
      : super(_value, (v) => _then(v as _OpenCBZ));

  @override
  _OpenCBZ get _value => super._value as _OpenCBZ;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_OpenCBZ(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_OpenCBZ implements _OpenCBZ {
  const _$_OpenCBZ({required this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'ComicsEvent.openCBZ(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenCBZ &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  _$OpenCBZCopyWith<_OpenCBZ> get copyWith =>
      __$OpenCBZCopyWithImpl<_OpenCBZ>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) openCBZ,
    required TResult Function(String path) openFolder,
  }) {
    return openCBZ(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File file)? openCBZ,
    TResult Function(String path)? openFolder,
  }) {
    return openCBZ?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? openCBZ,
    TResult Function(String path)? openFolder,
    required TResult orElse(),
  }) {
    if (openCBZ != null) {
      return openCBZ(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenCBZ value) openCBZ,
    required TResult Function(_OpenFolder value) openFolder,
  }) {
    return openCBZ(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenCBZ value)? openCBZ,
    TResult Function(_OpenFolder value)? openFolder,
  }) {
    return openCBZ?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenCBZ value)? openCBZ,
    TResult Function(_OpenFolder value)? openFolder,
    required TResult orElse(),
  }) {
    if (openCBZ != null) {
      return openCBZ(this);
    }
    return orElse();
  }
}

abstract class _OpenCBZ implements ComicsEvent {
  const factory _OpenCBZ({required File file}) = _$_OpenCBZ;

  File get file;
  @JsonKey(ignore: true)
  _$OpenCBZCopyWith<_OpenCBZ> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OpenFolderCopyWith<$Res> {
  factory _$OpenFolderCopyWith(
          _OpenFolder value, $Res Function(_OpenFolder) then) =
      __$OpenFolderCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class __$OpenFolderCopyWithImpl<$Res> extends _$ComicsEventCopyWithImpl<$Res>
    implements _$OpenFolderCopyWith<$Res> {
  __$OpenFolderCopyWithImpl(
      _OpenFolder _value, $Res Function(_OpenFolder) _then)
      : super(_value, (v) => _then(v as _OpenFolder));

  @override
  _OpenFolder get _value => super._value as _OpenFolder;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_OpenFolder(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OpenFolder implements _OpenFolder {
  const _$_OpenFolder({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'ComicsEvent.openFolder(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenFolder &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  _$OpenFolderCopyWith<_OpenFolder> get copyWith =>
      __$OpenFolderCopyWithImpl<_OpenFolder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file) openCBZ,
    required TResult Function(String path) openFolder,
  }) {
    return openFolder(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File file)? openCBZ,
    TResult Function(String path)? openFolder,
  }) {
    return openFolder?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file)? openCBZ,
    TResult Function(String path)? openFolder,
    required TResult orElse(),
  }) {
    if (openFolder != null) {
      return openFolder(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OpenCBZ value) openCBZ,
    required TResult Function(_OpenFolder value) openFolder,
  }) {
    return openFolder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OpenCBZ value)? openCBZ,
    TResult Function(_OpenFolder value)? openFolder,
  }) {
    return openFolder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OpenCBZ value)? openCBZ,
    TResult Function(_OpenFolder value)? openFolder,
    required TResult orElse(),
  }) {
    if (openFolder != null) {
      return openFolder(this);
    }
    return orElse();
  }
}

abstract class _OpenFolder implements ComicsEvent {
  const factory _OpenFolder({required String path}) = _$_OpenFolder;

  String get path;
  @JsonKey(ignore: true)
  _$OpenFolderCopyWith<_OpenFolder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ComicsStateTearOff {
  const _$ComicsStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Error error({required String error}) {
    return _Error(
      error: error,
    );
  }

  _Comics comics({required Comics comics}) {
    return _Comics(
      comics: comics,
    );
  }
}

/// @nodoc
const $ComicsState = _$ComicsStateTearOff();

/// @nodoc
mixin _$ComicsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Comics comics) comics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Comics value) comics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicsStateCopyWith<$Res> {
  factory $ComicsStateCopyWith(
          ComicsState value, $Res Function(ComicsState) then) =
      _$ComicsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ComicsStateCopyWithImpl<$Res> implements $ComicsStateCopyWith<$Res> {
  _$ComicsStateCopyWithImpl(this._value, this._then);

  final ComicsState _value;
  // ignore: unused_field
  final $Res Function(ComicsState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ComicsStateCopyWithImpl<$Res>
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
    return 'ComicsState.loading()';
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
    required TResult Function(Comics comics) comics,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
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
    required TResult Function(_Comics value) comics,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ComicsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ComicsStateCopyWithImpl<$Res>
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
    return 'ComicsState.error(error: $error)';
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
    required TResult Function(Comics comics) comics,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
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
    required TResult Function(_Comics value) comics,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ComicsState {
  const factory _Error({required String error}) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ComicsCopyWith<$Res> {
  factory _$ComicsCopyWith(_Comics value, $Res Function(_Comics) then) =
      __$ComicsCopyWithImpl<$Res>;
  $Res call({Comics comics});

  $ComicsCopyWith<$Res> get comics;
}

/// @nodoc
class __$ComicsCopyWithImpl<$Res> extends _$ComicsStateCopyWithImpl<$Res>
    implements _$ComicsCopyWith<$Res> {
  __$ComicsCopyWithImpl(_Comics _value, $Res Function(_Comics) _then)
      : super(_value, (v) => _then(v as _Comics));

  @override
  _Comics get _value => super._value as _Comics;

  @override
  $Res call({
    Object? comics = freezed,
  }) {
    return _then(_Comics(
      comics: comics == freezed
          ? _value.comics
          : comics // ignore: cast_nullable_to_non_nullable
              as Comics,
    ));
  }

  @override
  $ComicsCopyWith<$Res> get comics {
    return $ComicsCopyWith<$Res>(_value.comics, (value) {
      return _then(_value.copyWith(comics: value));
    });
  }
}

/// @nodoc

class _$_Comics implements _Comics {
  const _$_Comics({required this.comics});

  @override
  final Comics comics;

  @override
  String toString() {
    return 'ComicsState.comics(comics: $comics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Comics &&
            (identical(other.comics, comics) || other.comics == comics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comics);

  @JsonKey(ignore: true)
  @override
  _$ComicsCopyWith<_Comics> get copyWith =>
      __$ComicsCopyWithImpl<_Comics>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(Comics comics) comics,
  }) {
    return comics(this.comics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
  }) {
    return comics?.call(this.comics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(Comics comics)? comics,
    required TResult orElse(),
  }) {
    if (comics != null) {
      return comics(this.comics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Comics value) comics,
  }) {
    return comics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
  }) {
    return comics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Comics value)? comics,
    required TResult orElse(),
  }) {
    if (comics != null) {
      return comics(this);
    }
    return orElse();
  }
}

abstract class _Comics implements ComicsState {
  const factory _Comics({required Comics comics}) = _$_Comics;

  Comics get comics;
  @JsonKey(ignore: true)
  _$ComicsCopyWith<_Comics> get copyWith => throw _privateConstructorUsedError;
}
