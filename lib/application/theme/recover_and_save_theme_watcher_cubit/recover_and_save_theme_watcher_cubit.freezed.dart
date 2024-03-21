// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recover_and_save_theme_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecoverAndSaveThemeWatcherState {
  SelectedTheme get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecoverAndSaveThemeWatcherStateCopyWith<RecoverAndSaveThemeWatcherState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverAndSaveThemeWatcherStateCopyWith<$Res> {
  factory $RecoverAndSaveThemeWatcherStateCopyWith(
          RecoverAndSaveThemeWatcherState value,
          $Res Function(RecoverAndSaveThemeWatcherState) then) =
      _$RecoverAndSaveThemeWatcherStateCopyWithImpl<$Res,
          RecoverAndSaveThemeWatcherState>;
  @useResult
  $Res call({SelectedTheme theme});
}

/// @nodoc
class _$RecoverAndSaveThemeWatcherStateCopyWithImpl<$Res,
        $Val extends RecoverAndSaveThemeWatcherState>
    implements $RecoverAndSaveThemeWatcherStateCopyWith<$Res> {
  _$RecoverAndSaveThemeWatcherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as SelectedTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoverAndSaveThemeWatcherStateImplCopyWith<$Res>
    implements $RecoverAndSaveThemeWatcherStateCopyWith<$Res> {
  factory _$$RecoverAndSaveThemeWatcherStateImplCopyWith(
          _$RecoverAndSaveThemeWatcherStateImpl value,
          $Res Function(_$RecoverAndSaveThemeWatcherStateImpl) then) =
      __$$RecoverAndSaveThemeWatcherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SelectedTheme theme});
}

/// @nodoc
class __$$RecoverAndSaveThemeWatcherStateImplCopyWithImpl<$Res>
    extends _$RecoverAndSaveThemeWatcherStateCopyWithImpl<$Res,
        _$RecoverAndSaveThemeWatcherStateImpl>
    implements _$$RecoverAndSaveThemeWatcherStateImplCopyWith<$Res> {
  __$$RecoverAndSaveThemeWatcherStateImplCopyWithImpl(
      _$RecoverAndSaveThemeWatcherStateImpl _value,
      $Res Function(_$RecoverAndSaveThemeWatcherStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$RecoverAndSaveThemeWatcherStateImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as SelectedTheme,
    ));
  }
}

/// @nodoc

class _$RecoverAndSaveThemeWatcherStateImpl
    implements _RecoverAndSaveThemeWatcherState {
  const _$RecoverAndSaveThemeWatcherStateImpl({required this.theme});

  @override
  final SelectedTheme theme;

  @override
  String toString() {
    return 'RecoverAndSaveThemeWatcherState(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverAndSaveThemeWatcherStateImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverAndSaveThemeWatcherStateImplCopyWith<
          _$RecoverAndSaveThemeWatcherStateImpl>
      get copyWith => __$$RecoverAndSaveThemeWatcherStateImplCopyWithImpl<
          _$RecoverAndSaveThemeWatcherStateImpl>(this, _$identity);
}

abstract class _RecoverAndSaveThemeWatcherState
    implements RecoverAndSaveThemeWatcherState {
  const factory _RecoverAndSaveThemeWatcherState(
          {required final SelectedTheme theme}) =
      _$RecoverAndSaveThemeWatcherStateImpl;

  @override
  SelectedTheme get theme;
  @override
  @JsonKey(ignore: true)
  _$$RecoverAndSaveThemeWatcherStateImplCopyWith<
          _$RecoverAndSaveThemeWatcherStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
