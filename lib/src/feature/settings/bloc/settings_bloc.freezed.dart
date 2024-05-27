// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  AppTheme get theme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetThemeEvent value) setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetThemeEvent value)? setTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetThemeEvent value)? setTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsEventCopyWith<SettingsEvent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent> implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

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
              as AppTheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetThemeEventImplCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$$SetThemeEventImplCopyWith(_$SetThemeEventImpl value, $Res Function(_$SetThemeEventImpl) then) =
      __$$SetThemeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppTheme theme});
}

/// @nodoc
class __$$SetThemeEventImplCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res, _$SetThemeEventImpl>
    implements _$$SetThemeEventImplCopyWith<$Res> {
  __$$SetThemeEventImplCopyWithImpl(_$SetThemeEventImpl _value, $Res Function(_$SetThemeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$SetThemeEventImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc

class _$SetThemeEventImpl implements SetThemeEvent {
  const _$SetThemeEventImpl({required this.theme});

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'SettingsEvent.setTheme(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetThemeEventImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetThemeEventImplCopyWith<_$SetThemeEventImpl> get copyWith =>
      __$$SetThemeEventImplCopyWithImpl<_$SetThemeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) setTheme,
  }) {
    return setTheme(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppTheme theme)? setTheme,
  }) {
    return setTheme?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? setTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetThemeEvent value) setTheme,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetThemeEvent value)? setTheme,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetThemeEvent value)? setTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class SetThemeEvent implements SettingsEvent {
  const factory SetThemeEvent({required final AppTheme theme}) = _$SetThemeEventImpl;

  @override
  AppTheme get theme;
  @override
  @JsonKey(ignore: true)
  _$$SetThemeEventImplCopyWith<_$SetThemeEventImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  SettingsData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) initial,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) loadSuccess,
    required TResult Function(SettingsData data, String error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? initial,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? loadSuccess,
    TResult? Function(SettingsData data, String error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? initial,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? loadSuccess,
    TResult Function(SettingsData data, String error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitialState value) initial,
    required TResult Function(SettingsLoadingState value) loading,
    required TResult Function(SettingsLoadSuccessState value) loadSuccess,
    required TResult Function(SettingsLoadFailureState value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitialState value)? initial,
    TResult? Function(SettingsLoadingState value)? loading,
    TResult? Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult? Function(SettingsLoadFailureState value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitialState value)? initial,
    TResult Function(SettingsLoadingState value)? loading,
    TResult Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult Function(SettingsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({SettingsData data});

  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState> implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsDataCopyWith<$Res> get data {
    return $SettingsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsInitialStateImplCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsInitialStateImplCopyWith(
          _$SettingsInitialStateImpl value, $Res Function(_$SettingsInitialStateImpl) then) =
      __$$SettingsInitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsInitialStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsInitialStateImpl>
    implements _$$SettingsInitialStateImplCopyWith<$Res> {
  __$$SettingsInitialStateImplCopyWithImpl(
      _$SettingsInitialStateImpl _value, $Res Function(_$SettingsInitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsInitialStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsInitialStateImpl implements SettingsInitialState {
  const _$SettingsInitialStateImpl({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsInitialStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsInitialStateImplCopyWith<_$SettingsInitialStateImpl> get copyWith =>
      __$$SettingsInitialStateImplCopyWithImpl<_$SettingsInitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) initial,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) loadSuccess,
    required TResult Function(SettingsData data, String error) loadFailure,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? initial,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? loadSuccess,
    TResult? Function(SettingsData data, String error)? loadFailure,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? initial,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? loadSuccess,
    TResult Function(SettingsData data, String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitialState value) initial,
    required TResult Function(SettingsLoadingState value) loading,
    required TResult Function(SettingsLoadSuccessState value) loadSuccess,
    required TResult Function(SettingsLoadFailureState value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitialState value)? initial,
    TResult? Function(SettingsLoadingState value)? loading,
    TResult? Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult? Function(SettingsLoadFailureState value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitialState value)? initial,
    TResult Function(SettingsLoadingState value)? loading,
    TResult Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult Function(SettingsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingsInitialState implements SettingsState {
  const factory SettingsInitialState({required final SettingsData data}) = _$SettingsInitialStateImpl;

  @override
  SettingsData get data;
  @override
  @JsonKey(ignore: true)
  _$$SettingsInitialStateImplCopyWith<_$SettingsInitialStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsLoadingStateImplCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsLoadingStateImplCopyWith(
          _$SettingsLoadingStateImpl value, $Res Function(_$SettingsLoadingStateImpl) then) =
      __$$SettingsLoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsLoadingStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadingStateImpl>
    implements _$$SettingsLoadingStateImplCopyWith<$Res> {
  __$$SettingsLoadingStateImplCopyWithImpl(
      _$SettingsLoadingStateImpl _value, $Res Function(_$SettingsLoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsLoadingStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsLoadingStateImpl implements SettingsLoadingState {
  const _$SettingsLoadingStateImpl({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadingStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLoadingStateImplCopyWith<_$SettingsLoadingStateImpl> get copyWith =>
      __$$SettingsLoadingStateImplCopyWithImpl<_$SettingsLoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) initial,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) loadSuccess,
    required TResult Function(SettingsData data, String error) loadFailure,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? initial,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? loadSuccess,
    TResult? Function(SettingsData data, String error)? loadFailure,
  }) {
    return loading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? initial,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? loadSuccess,
    TResult Function(SettingsData data, String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitialState value) initial,
    required TResult Function(SettingsLoadingState value) loading,
    required TResult Function(SettingsLoadSuccessState value) loadSuccess,
    required TResult Function(SettingsLoadFailureState value) loadFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitialState value)? initial,
    TResult? Function(SettingsLoadingState value)? loading,
    TResult? Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult? Function(SettingsLoadFailureState value)? loadFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitialState value)? initial,
    TResult Function(SettingsLoadingState value)? loading,
    TResult Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult Function(SettingsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SettingsLoadingState implements SettingsState {
  const factory SettingsLoadingState({required final SettingsData data}) = _$SettingsLoadingStateImpl;

  @override
  SettingsData get data;
  @override
  @JsonKey(ignore: true)
  _$$SettingsLoadingStateImplCopyWith<_$SettingsLoadingStateImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsLoadSuccessStateImplCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsLoadSuccessStateImplCopyWith(
          _$SettingsLoadSuccessStateImpl value, $Res Function(_$SettingsLoadSuccessStateImpl) then) =
      __$$SettingsLoadSuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadSuccessStateImpl>
    implements _$$SettingsLoadSuccessStateImplCopyWith<$Res> {
  __$$SettingsLoadSuccessStateImplCopyWithImpl(
      _$SettingsLoadSuccessStateImpl _value, $Res Function(_$SettingsLoadSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SettingsLoadSuccessStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
    ));
  }
}

/// @nodoc

class _$SettingsLoadSuccessStateImpl implements SettingsLoadSuccessState {
  const _$SettingsLoadSuccessStateImpl({required this.data});

  @override
  final SettingsData data;

  @override
  String toString() {
    return 'SettingsState.loadSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadSuccessStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLoadSuccessStateImplCopyWith<_$SettingsLoadSuccessStateImpl> get copyWith =>
      __$$SettingsLoadSuccessStateImplCopyWithImpl<_$SettingsLoadSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) initial,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) loadSuccess,
    required TResult Function(SettingsData data, String error) loadFailure,
  }) {
    return loadSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? initial,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? loadSuccess,
    TResult? Function(SettingsData data, String error)? loadFailure,
  }) {
    return loadSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? initial,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? loadSuccess,
    TResult Function(SettingsData data, String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitialState value) initial,
    required TResult Function(SettingsLoadingState value) loading,
    required TResult Function(SettingsLoadSuccessState value) loadSuccess,
    required TResult Function(SettingsLoadFailureState value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitialState value)? initial,
    TResult? Function(SettingsLoadingState value)? loading,
    TResult? Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult? Function(SettingsLoadFailureState value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitialState value)? initial,
    TResult Function(SettingsLoadingState value)? loading,
    TResult Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult Function(SettingsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class SettingsLoadSuccessState implements SettingsState {
  const factory SettingsLoadSuccessState({required final SettingsData data}) = _$SettingsLoadSuccessStateImpl;

  @override
  SettingsData get data;
  @override
  @JsonKey(ignore: true)
  _$$SettingsLoadSuccessStateImplCopyWith<_$SettingsLoadSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsLoadFailureStateImplCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsLoadFailureStateImplCopyWith(
          _$SettingsLoadFailureStateImpl value, $Res Function(_$SettingsLoadFailureStateImpl) then) =
      __$$SettingsLoadFailureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SettingsData data, String error});

  @override
  $SettingsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SettingsLoadFailureStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsLoadFailureStateImpl>
    implements _$$SettingsLoadFailureStateImplCopyWith<$Res> {
  __$$SettingsLoadFailureStateImplCopyWithImpl(
      _$SettingsLoadFailureStateImpl _value, $Res Function(_$SettingsLoadFailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_$SettingsLoadFailureStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SettingsData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SettingsLoadFailureStateImpl implements SettingsLoadFailureState {
  const _$SettingsLoadFailureStateImpl({required this.data, required this.error});

  @override
  final SettingsData data;
  @override
  final String error;

  @override
  String toString() {
    return 'SettingsState.loadFailure(data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLoadFailureStateImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLoadFailureStateImplCopyWith<_$SettingsLoadFailureStateImpl> get copyWith =>
      __$$SettingsLoadFailureStateImplCopyWithImpl<_$SettingsLoadFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SettingsData data) initial,
    required TResult Function(SettingsData data) loading,
    required TResult Function(SettingsData data) loadSuccess,
    required TResult Function(SettingsData data, String error) loadFailure,
  }) {
    return loadFailure(data, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SettingsData data)? initial,
    TResult? Function(SettingsData data)? loading,
    TResult? Function(SettingsData data)? loadSuccess,
    TResult? Function(SettingsData data, String error)? loadFailure,
  }) {
    return loadFailure?.call(data, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SettingsData data)? initial,
    TResult Function(SettingsData data)? loading,
    TResult Function(SettingsData data)? loadSuccess,
    TResult Function(SettingsData data, String error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(data, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitialState value) initial,
    required TResult Function(SettingsLoadingState value) loading,
    required TResult Function(SettingsLoadSuccessState value) loadSuccess,
    required TResult Function(SettingsLoadFailureState value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitialState value)? initial,
    TResult? Function(SettingsLoadingState value)? loading,
    TResult? Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult? Function(SettingsLoadFailureState value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitialState value)? initial,
    TResult Function(SettingsLoadingState value)? loading,
    TResult Function(SettingsLoadSuccessState value)? loadSuccess,
    TResult Function(SettingsLoadFailureState value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class SettingsLoadFailureState implements SettingsState {
  const factory SettingsLoadFailureState({required final SettingsData data, required final String error}) =
      _$SettingsLoadFailureStateImpl;

  @override
  SettingsData get data;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$SettingsLoadFailureStateImplCopyWith<_$SettingsLoadFailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
