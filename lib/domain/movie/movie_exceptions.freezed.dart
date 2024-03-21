// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(String statusCode, String statusMessage)
        serverError,
    required TResult Function() cantSaveMovieToFavourites,
    required TResult Function() cantRemoveMovieFromFavourites,
    required TResult Function() cantGetFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(String statusCode, String statusMessage)? serverError,
    TResult? Function()? cantSaveMovieToFavourites,
    TResult? Function()? cantRemoveMovieFromFavourites,
    TResult? Function()? cantGetFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(String statusCode, String statusMessage)? serverError,
    TResult Function()? cantSaveMovieToFavourites,
    TResult Function()? cantRemoveMovieFromFavourites,
    TResult Function()? cantGetFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_CantSaveMovieToFavourites value)
        cantSaveMovieToFavourites,
    required TResult Function(_CantRemoveMovieFromFavourites value)
        cantRemoveMovieFromFavourites,
    required TResult Function(_CantGetFavourites value) cantGetFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult? Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult? Function(_CantGetFavourites value)? cantGetFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult Function(_CantGetFavourites value)? cantGetFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieExceptionCopyWith<$Res> {
  factory $MovieExceptionCopyWith(
          MovieException value, $Res Function(MovieException) then) =
      _$MovieExceptionCopyWithImpl<$Res, MovieException>;
}

/// @nodoc
class _$MovieExceptionCopyWithImpl<$Res, $Val extends MovieException>
    implements $MovieExceptionCopyWith<$Res> {
  _$MovieExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString() {
    return 'MovieException.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(String statusCode, String statusMessage)
        serverError,
    required TResult Function() cantSaveMovieToFavourites,
    required TResult Function() cantRemoveMovieFromFavourites,
    required TResult Function() cantGetFavourites,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(String statusCode, String statusMessage)? serverError,
    TResult? Function()? cantSaveMovieToFavourites,
    TResult? Function()? cantRemoveMovieFromFavourites,
    TResult? Function()? cantGetFavourites,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(String statusCode, String statusMessage)? serverError,
    TResult Function()? cantSaveMovieToFavourites,
    TResult Function()? cantRemoveMovieFromFavourites,
    TResult Function()? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_CantSaveMovieToFavourites value)
        cantSaveMovieToFavourites,
    required TResult Function(_CantRemoveMovieFromFavourites value)
        cantRemoveMovieFromFavourites,
    required TResult Function(_CantGetFavourites value) cantGetFavourites,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult? Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult? Function(_CantGetFavourites value)? cantGetFavourites,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult Function(_CantGetFavourites value)? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements MovieException {
  const factory _Unauthorized() = _$UnauthorizedImpl;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String statusCode, String statusMessage});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? statusMessage = null,
  }) {
    return _then(_$ServerErrorImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String,
      statusMessage: null == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl implements _ServerError {
  const _$ServerErrorImpl(
      {required this.statusCode, required this.statusMessage});

  @override
  final String statusCode;
  @override
  final String statusMessage;

  @override
  String toString() {
    return 'MovieException.serverError(statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(String statusCode, String statusMessage)
        serverError,
    required TResult Function() cantSaveMovieToFavourites,
    required TResult Function() cantRemoveMovieFromFavourites,
    required TResult Function() cantGetFavourites,
  }) {
    return serverError(statusCode, statusMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(String statusCode, String statusMessage)? serverError,
    TResult? Function()? cantSaveMovieToFavourites,
    TResult? Function()? cantRemoveMovieFromFavourites,
    TResult? Function()? cantGetFavourites,
  }) {
    return serverError?.call(statusCode, statusMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(String statusCode, String statusMessage)? serverError,
    TResult Function()? cantSaveMovieToFavourites,
    TResult Function()? cantRemoveMovieFromFavourites,
    TResult Function()? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(statusCode, statusMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_CantSaveMovieToFavourites value)
        cantSaveMovieToFavourites,
    required TResult Function(_CantRemoveMovieFromFavourites value)
        cantRemoveMovieFromFavourites,
    required TResult Function(_CantGetFavourites value) cantGetFavourites,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult? Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult? Function(_CantGetFavourites value)? cantGetFavourites,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult Function(_CantGetFavourites value)? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements MovieException {
  const factory _ServerError(
      {required final String statusCode,
      required final String statusMessage}) = _$ServerErrorImpl;

  String get statusCode;
  String get statusMessage;
  @JsonKey(ignore: true)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CantSaveMovieToFavouritesImplCopyWith<$Res> {
  factory _$$CantSaveMovieToFavouritesImplCopyWith(
          _$CantSaveMovieToFavouritesImpl value,
          $Res Function(_$CantSaveMovieToFavouritesImpl) then) =
      __$$CantSaveMovieToFavouritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CantSaveMovieToFavouritesImplCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res, _$CantSaveMovieToFavouritesImpl>
    implements _$$CantSaveMovieToFavouritesImplCopyWith<$Res> {
  __$$CantSaveMovieToFavouritesImplCopyWithImpl(
      _$CantSaveMovieToFavouritesImpl _value,
      $Res Function(_$CantSaveMovieToFavouritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CantSaveMovieToFavouritesImpl implements _CantSaveMovieToFavourites {
  const _$CantSaveMovieToFavouritesImpl();

  @override
  String toString() {
    return 'MovieException.cantSaveMovieToFavourites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CantSaveMovieToFavouritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(String statusCode, String statusMessage)
        serverError,
    required TResult Function() cantSaveMovieToFavourites,
    required TResult Function() cantRemoveMovieFromFavourites,
    required TResult Function() cantGetFavourites,
  }) {
    return cantSaveMovieToFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(String statusCode, String statusMessage)? serverError,
    TResult? Function()? cantSaveMovieToFavourites,
    TResult? Function()? cantRemoveMovieFromFavourites,
    TResult? Function()? cantGetFavourites,
  }) {
    return cantSaveMovieToFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(String statusCode, String statusMessage)? serverError,
    TResult Function()? cantSaveMovieToFavourites,
    TResult Function()? cantRemoveMovieFromFavourites,
    TResult Function()? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (cantSaveMovieToFavourites != null) {
      return cantSaveMovieToFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_CantSaveMovieToFavourites value)
        cantSaveMovieToFavourites,
    required TResult Function(_CantRemoveMovieFromFavourites value)
        cantRemoveMovieFromFavourites,
    required TResult Function(_CantGetFavourites value) cantGetFavourites,
  }) {
    return cantSaveMovieToFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult? Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult? Function(_CantGetFavourites value)? cantGetFavourites,
  }) {
    return cantSaveMovieToFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult Function(_CantGetFavourites value)? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (cantSaveMovieToFavourites != null) {
      return cantSaveMovieToFavourites(this);
    }
    return orElse();
  }
}

abstract class _CantSaveMovieToFavourites implements MovieException {
  const factory _CantSaveMovieToFavourites() = _$CantSaveMovieToFavouritesImpl;
}

/// @nodoc
abstract class _$$CantRemoveMovieFromFavouritesImplCopyWith<$Res> {
  factory _$$CantRemoveMovieFromFavouritesImplCopyWith(
          _$CantRemoveMovieFromFavouritesImpl value,
          $Res Function(_$CantRemoveMovieFromFavouritesImpl) then) =
      __$$CantRemoveMovieFromFavouritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CantRemoveMovieFromFavouritesImplCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res,
        _$CantRemoveMovieFromFavouritesImpl>
    implements _$$CantRemoveMovieFromFavouritesImplCopyWith<$Res> {
  __$$CantRemoveMovieFromFavouritesImplCopyWithImpl(
      _$CantRemoveMovieFromFavouritesImpl _value,
      $Res Function(_$CantRemoveMovieFromFavouritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CantRemoveMovieFromFavouritesImpl
    implements _CantRemoveMovieFromFavourites {
  const _$CantRemoveMovieFromFavouritesImpl();

  @override
  String toString() {
    return 'MovieException.cantRemoveMovieFromFavourites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CantRemoveMovieFromFavouritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(String statusCode, String statusMessage)
        serverError,
    required TResult Function() cantSaveMovieToFavourites,
    required TResult Function() cantRemoveMovieFromFavourites,
    required TResult Function() cantGetFavourites,
  }) {
    return cantRemoveMovieFromFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(String statusCode, String statusMessage)? serverError,
    TResult? Function()? cantSaveMovieToFavourites,
    TResult? Function()? cantRemoveMovieFromFavourites,
    TResult? Function()? cantGetFavourites,
  }) {
    return cantRemoveMovieFromFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(String statusCode, String statusMessage)? serverError,
    TResult Function()? cantSaveMovieToFavourites,
    TResult Function()? cantRemoveMovieFromFavourites,
    TResult Function()? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (cantRemoveMovieFromFavourites != null) {
      return cantRemoveMovieFromFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_CantSaveMovieToFavourites value)
        cantSaveMovieToFavourites,
    required TResult Function(_CantRemoveMovieFromFavourites value)
        cantRemoveMovieFromFavourites,
    required TResult Function(_CantGetFavourites value) cantGetFavourites,
  }) {
    return cantRemoveMovieFromFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult? Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult? Function(_CantGetFavourites value)? cantGetFavourites,
  }) {
    return cantRemoveMovieFromFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult Function(_CantGetFavourites value)? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (cantRemoveMovieFromFavourites != null) {
      return cantRemoveMovieFromFavourites(this);
    }
    return orElse();
  }
}

abstract class _CantRemoveMovieFromFavourites implements MovieException {
  const factory _CantRemoveMovieFromFavourites() =
      _$CantRemoveMovieFromFavouritesImpl;
}

/// @nodoc
abstract class _$$CantGetFavouritesImplCopyWith<$Res> {
  factory _$$CantGetFavouritesImplCopyWith(_$CantGetFavouritesImpl value,
          $Res Function(_$CantGetFavouritesImpl) then) =
      __$$CantGetFavouritesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CantGetFavouritesImplCopyWithImpl<$Res>
    extends _$MovieExceptionCopyWithImpl<$Res, _$CantGetFavouritesImpl>
    implements _$$CantGetFavouritesImplCopyWith<$Res> {
  __$$CantGetFavouritesImplCopyWithImpl(_$CantGetFavouritesImpl _value,
      $Res Function(_$CantGetFavouritesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CantGetFavouritesImpl implements _CantGetFavourites {
  const _$CantGetFavouritesImpl();

  @override
  String toString() {
    return 'MovieException.cantGetFavourites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CantGetFavouritesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function(String statusCode, String statusMessage)
        serverError,
    required TResult Function() cantSaveMovieToFavourites,
    required TResult Function() cantRemoveMovieFromFavourites,
    required TResult Function() cantGetFavourites,
  }) {
    return cantGetFavourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function(String statusCode, String statusMessage)? serverError,
    TResult? Function()? cantSaveMovieToFavourites,
    TResult? Function()? cantRemoveMovieFromFavourites,
    TResult? Function()? cantGetFavourites,
  }) {
    return cantGetFavourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function(String statusCode, String statusMessage)? serverError,
    TResult Function()? cantSaveMovieToFavourites,
    TResult Function()? cantRemoveMovieFromFavourites,
    TResult Function()? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (cantGetFavourites != null) {
      return cantGetFavourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_CantSaveMovieToFavourites value)
        cantSaveMovieToFavourites,
    required TResult Function(_CantRemoveMovieFromFavourites value)
        cantRemoveMovieFromFavourites,
    required TResult Function(_CantGetFavourites value) cantGetFavourites,
  }) {
    return cantGetFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult? Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult? Function(_CantGetFavourites value)? cantGetFavourites,
  }) {
    return cantGetFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_CantSaveMovieToFavourites value)?
        cantSaveMovieToFavourites,
    TResult Function(_CantRemoveMovieFromFavourites value)?
        cantRemoveMovieFromFavourites,
    TResult Function(_CantGetFavourites value)? cantGetFavourites,
    required TResult orElse(),
  }) {
    if (cantGetFavourites != null) {
      return cantGetFavourites(this);
    }
    return orElse();
  }
}

abstract class _CantGetFavourites implements MovieException {
  const factory _CantGetFavourites() = _$CantGetFavouritesImpl;
}
