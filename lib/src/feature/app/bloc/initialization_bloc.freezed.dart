// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'initialization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitializationProgress {
  InitializationStep get currentStep => throw _privateConstructorUsedError;
  IEnvironmentStorage? get environmentStorage =>
      throw _privateConstructorUsedError;
  ErrorTrackingDisabler? get errorTrackingDisabler =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitializationProgressCopyWith<InitializationProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationProgressCopyWith<$Res> {
  factory $InitializationProgressCopyWith(InitializationProgress value,
          $Res Function(InitializationProgress) then) =
      _$InitializationProgressCopyWithImpl<$Res, InitializationProgress>;
  @useResult
  $Res call(
      {InitializationStep currentStep,
      IEnvironmentStorage? environmentStorage,
      ErrorTrackingDisabler? errorTrackingDisabler});
}

/// @nodoc
class _$InitializationProgressCopyWithImpl<$Res,
        $Val extends InitializationProgress>
    implements $InitializationProgressCopyWith<$Res> {
  _$InitializationProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? environmentStorage = freezed,
    Object? errorTrackingDisabler = freezed,
  }) {
    return _then(_value.copyWith(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as InitializationStep,
      environmentStorage: freezed == environmentStorage
          ? _value.environmentStorage
          : environmentStorage // ignore: cast_nullable_to_non_nullable
              as IEnvironmentStorage?,
      errorTrackingDisabler: freezed == errorTrackingDisabler
          ? _value.errorTrackingDisabler
          : errorTrackingDisabler // ignore: cast_nullable_to_non_nullable
              as ErrorTrackingDisabler?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitializationProgressCopyWith<$Res>
    implements $InitializationProgressCopyWith<$Res> {
  factory _$$_InitializationProgressCopyWith(_$_InitializationProgress value,
          $Res Function(_$_InitializationProgress) then) =
      __$$_InitializationProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InitializationStep currentStep,
      IEnvironmentStorage? environmentStorage,
      ErrorTrackingDisabler? errorTrackingDisabler});
}

/// @nodoc
class __$$_InitializationProgressCopyWithImpl<$Res>
    extends _$InitializationProgressCopyWithImpl<$Res,
        _$_InitializationProgress>
    implements _$$_InitializationProgressCopyWith<$Res> {
  __$$_InitializationProgressCopyWithImpl(_$_InitializationProgress _value,
      $Res Function(_$_InitializationProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? environmentStorage = freezed,
    Object? errorTrackingDisabler = freezed,
  }) {
    return _then(_$_InitializationProgress(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as InitializationStep,
      environmentStorage: freezed == environmentStorage
          ? _value.environmentStorage
          : environmentStorage // ignore: cast_nullable_to_non_nullable
              as IEnvironmentStorage?,
      errorTrackingDisabler: freezed == errorTrackingDisabler
          ? _value.errorTrackingDisabler
          : errorTrackingDisabler // ignore: cast_nullable_to_non_nullable
              as ErrorTrackingDisabler?,
    ));
  }
}

/// @nodoc

class _$_InitializationProgress extends _InitializationProgress {
  const _$_InitializationProgress(
      {required this.currentStep,
      this.environmentStorage,
      this.errorTrackingDisabler})
      : super._();

  @override
  final InitializationStep currentStep;
  @override
  final IEnvironmentStorage? environmentStorage;
  @override
  final ErrorTrackingDisabler? errorTrackingDisabler;

  @override
  String toString() {
    return 'InitializationProgress(currentStep: $currentStep, environmentStorage: $environmentStorage, errorTrackingDisabler: $errorTrackingDisabler)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializationProgress &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.environmentStorage, environmentStorage) ||
                other.environmentStorage == environmentStorage) &&
            (identical(other.errorTrackingDisabler, errorTrackingDisabler) ||
                other.errorTrackingDisabler == errorTrackingDisabler));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentStep, environmentStorage, errorTrackingDisabler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializationProgressCopyWith<_$_InitializationProgress> get copyWith =>
      __$$_InitializationProgressCopyWithImpl<_$_InitializationProgress>(
          this, _$identity);
}

abstract class _InitializationProgress extends InitializationProgress {
  const factory _InitializationProgress(
          {required final InitializationStep currentStep,
          final IEnvironmentStorage? environmentStorage,
          final ErrorTrackingDisabler? errorTrackingDisabler}) =
      _$_InitializationProgress;
  const _InitializationProgress._() : super._();

  @override
  InitializationStep get currentStep;
  @override
  IEnvironmentStorage? get environmentStorage;
  @override
  ErrorTrackingDisabler? get errorTrackingDisabler;
  @override
  @JsonKey(ignore: true)
  _$$_InitializationProgressCopyWith<_$_InitializationProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)
        initialized,
    required TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function(InitializationProgress progress)? initializing,
    TResult? Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult? Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(InitializationProgress progress)? initializing,
    TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializationNotInitialized value)
        notInitialized,
    required TResult Function(InitializationInitializing value) initializing,
    required TResult Function(InitializationInitialized value) initialized,
    required TResult Function(InitializationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializationNotInitialized value)? notInitialized,
    TResult? Function(InitializationInitializing value)? initializing,
    TResult? Function(InitializationInitialized value)? initialized,
    TResult? Function(InitializationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializationNotInitialized value)? notInitialized,
    TResult Function(InitializationInitializing value)? initializing,
    TResult Function(InitializationInitialized value)? initialized,
    TResult Function(InitializationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationStateCopyWith<$Res> {
  factory $InitializationStateCopyWith(
          InitializationState value, $Res Function(InitializationState) then) =
      _$InitializationStateCopyWithImpl<$Res, InitializationState>;
}

/// @nodoc
class _$InitializationStateCopyWithImpl<$Res, $Val extends InitializationState>
    implements $InitializationStateCopyWith<$Res> {
  _$InitializationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializationNotInitializedCopyWith<$Res> {
  factory _$$InitializationNotInitializedCopyWith(
          _$InitializationNotInitialized value,
          $Res Function(_$InitializationNotInitialized) then) =
      __$$InitializationNotInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializationNotInitializedCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res,
        _$InitializationNotInitialized>
    implements _$$InitializationNotInitializedCopyWith<$Res> {
  __$$InitializationNotInitializedCopyWithImpl(
      _$InitializationNotInitialized _value,
      $Res Function(_$InitializationNotInitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializationNotInitialized extends InitializationNotInitialized {
  const _$InitializationNotInitialized() : super._();

  @override
  String toString() {
    return 'InitializationState.notInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationNotInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)
        initialized,
    required TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)
        error,
  }) {
    return notInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function(InitializationProgress progress)? initializing,
    TResult? Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult? Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
  }) {
    return notInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(InitializationProgress progress)? initializing,
    TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializationNotInitialized value)
        notInitialized,
    required TResult Function(InitializationInitializing value) initializing,
    required TResult Function(InitializationInitialized value) initialized,
    required TResult Function(InitializationError value) error,
  }) {
    return notInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializationNotInitialized value)? notInitialized,
    TResult? Function(InitializationInitializing value)? initializing,
    TResult? Function(InitializationInitialized value)? initialized,
    TResult? Function(InitializationError value)? error,
  }) {
    return notInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializationNotInitialized value)? notInitialized,
    TResult Function(InitializationInitializing value)? initializing,
    TResult Function(InitializationInitialized value)? initialized,
    TResult Function(InitializationError value)? error,
    required TResult orElse(),
  }) {
    if (notInitialized != null) {
      return notInitialized(this);
    }
    return orElse();
  }
}

abstract class InitializationNotInitialized extends InitializationState {
  const factory InitializationNotInitialized() = _$InitializationNotInitialized;
  const InitializationNotInitialized._() : super._();
}

/// @nodoc
abstract class _$$InitializationInitializingCopyWith<$Res> {
  factory _$$InitializationInitializingCopyWith(
          _$InitializationInitializing value,
          $Res Function(_$InitializationInitializing) then) =
      __$$InitializationInitializingCopyWithImpl<$Res>;
  @useResult
  $Res call({InitializationProgress progress});

  $InitializationProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$InitializationInitializingCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res,
        _$InitializationInitializing>
    implements _$$InitializationInitializingCopyWith<$Res> {
  __$$InitializationInitializingCopyWithImpl(
      _$InitializationInitializing _value,
      $Res Function(_$InitializationInitializing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$InitializationInitializing(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as InitializationProgress,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InitializationProgressCopyWith<$Res> get progress {
    return $InitializationProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc

class _$InitializationInitializing extends InitializationInitializing
    with _IndexedInitializationStateMixin {
  const _$InitializationInitializing({required this.progress}) : super._();

  @override
  final InitializationProgress progress;

  @override
  String toString() {
    return 'InitializationState.initializing(progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationInitializing &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializationInitializingCopyWith<_$InitializationInitializing>
      get copyWith => __$$InitializationInitializingCopyWithImpl<
          _$InitializationInitializing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)
        initialized,
    required TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)
        error,
  }) {
    return initializing(progress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function(InitializationProgress progress)? initializing,
    TResult? Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult? Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
  }) {
    return initializing?.call(progress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(InitializationProgress progress)? initializing,
    TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(progress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializationNotInitialized value)
        notInitialized,
    required TResult Function(InitializationInitializing value) initializing,
    required TResult Function(InitializationInitialized value) initialized,
    required TResult Function(InitializationError value) error,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializationNotInitialized value)? notInitialized,
    TResult? Function(InitializationInitializing value)? initializing,
    TResult? Function(InitializationInitialized value)? initialized,
    TResult? Function(InitializationError value)? error,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializationNotInitialized value)? notInitialized,
    TResult Function(InitializationInitializing value)? initializing,
    TResult Function(InitializationInitialized value)? initialized,
    TResult Function(InitializationError value)? error,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class InitializationInitializing extends InitializationState
    implements _IndexedInitializationStateMixin {
  const factory InitializationInitializing(
          {required final InitializationProgress progress}) =
      _$InitializationInitializing;
  const InitializationInitializing._() : super._();

  InitializationProgress get progress;
  @JsonKey(ignore: true)
  _$$InitializationInitializingCopyWith<_$InitializationInitializing>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializationInitializedCopyWith<$Res> {
  factory _$$InitializationInitializedCopyWith(
          _$InitializationInitialized value,
          $Res Function(_$InitializationInitialized) then) =
      __$$InitializationInitializedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {IEnvironmentStorage environmentStorage,
      ErrorTrackingDisabler errorTrackingDisabler,
      SharedPreferences sharedPreferences});
}

/// @nodoc
class __$$InitializationInitializedCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res, _$InitializationInitialized>
    implements _$$InitializationInitializedCopyWith<$Res> {
  __$$InitializationInitializedCopyWithImpl(_$InitializationInitialized _value,
      $Res Function(_$InitializationInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environmentStorage = null,
    Object? errorTrackingDisabler = null,
    Object? sharedPreferences = null,
  }) {
    return _then(_$InitializationInitialized(
      environmentStorage: null == environmentStorage
          ? _value.environmentStorage
          : environmentStorage // ignore: cast_nullable_to_non_nullable
              as IEnvironmentStorage,
      errorTrackingDisabler: null == errorTrackingDisabler
          ? _value.errorTrackingDisabler
          : errorTrackingDisabler // ignore: cast_nullable_to_non_nullable
              as ErrorTrackingDisabler,
      sharedPreferences: null == sharedPreferences
          ? _value.sharedPreferences
          : sharedPreferences // ignore: cast_nullable_to_non_nullable
              as SharedPreferences,
    ));
  }
}

/// @nodoc

class _$InitializationInitialized extends InitializationInitialized {
  const _$InitializationInitialized(
      {required this.environmentStorage,
      required this.errorTrackingDisabler,
      required this.sharedPreferences})
      : super._();

  @override
  final IEnvironmentStorage environmentStorage;
  @override
  final ErrorTrackingDisabler errorTrackingDisabler;
  @override
  final SharedPreferences sharedPreferences;

  @override
  String toString() {
    return 'InitializationState.initialized(environmentStorage: $environmentStorage, errorTrackingDisabler: $errorTrackingDisabler, sharedPreferences: $sharedPreferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationInitialized &&
            (identical(other.environmentStorage, environmentStorage) ||
                other.environmentStorage == environmentStorage) &&
            (identical(other.errorTrackingDisabler, errorTrackingDisabler) ||
                other.errorTrackingDisabler == errorTrackingDisabler) &&
            (identical(other.sharedPreferences, sharedPreferences) ||
                other.sharedPreferences == sharedPreferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, environmentStorage,
      errorTrackingDisabler, sharedPreferences);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializationInitializedCopyWith<_$InitializationInitialized>
      get copyWith => __$$InitializationInitializedCopyWithImpl<
          _$InitializationInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)
        initialized,
    required TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)
        error,
  }) {
    return initialized(
        environmentStorage, errorTrackingDisabler, sharedPreferences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function(InitializationProgress progress)? initializing,
    TResult? Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult? Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
  }) {
    return initialized?.call(
        environmentStorage, errorTrackingDisabler, sharedPreferences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(InitializationProgress progress)? initializing,
    TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          environmentStorage, errorTrackingDisabler, sharedPreferences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializationNotInitialized value)
        notInitialized,
    required TResult Function(InitializationInitializing value) initializing,
    required TResult Function(InitializationInitialized value) initialized,
    required TResult Function(InitializationError value) error,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializationNotInitialized value)? notInitialized,
    TResult? Function(InitializationInitializing value)? initializing,
    TResult? Function(InitializationInitialized value)? initialized,
    TResult? Function(InitializationError value)? error,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializationNotInitialized value)? notInitialized,
    TResult Function(InitializationInitializing value)? initializing,
    TResult Function(InitializationInitialized value)? initialized,
    TResult Function(InitializationError value)? error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class InitializationInitialized extends InitializationState
    implements InitializationData {
  const factory InitializationInitialized(
          {required final IEnvironmentStorage environmentStorage,
          required final ErrorTrackingDisabler errorTrackingDisabler,
          required final SharedPreferences sharedPreferences}) =
      _$InitializationInitialized;
  const InitializationInitialized._() : super._();

  IEnvironmentStorage get environmentStorage;
  ErrorTrackingDisabler get errorTrackingDisabler;
  SharedPreferences get sharedPreferences;
  @JsonKey(ignore: true)
  _$$InitializationInitializedCopyWith<_$InitializationInitialized>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializationErrorCopyWith<$Res> {
  factory _$$InitializationErrorCopyWith(_$InitializationError value,
          $Res Function(_$InitializationError) then) =
      __$$InitializationErrorCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {InitializationProgress progress, Object error, StackTrace stackTrace});

  $InitializationProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$InitializationErrorCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res, _$InitializationError>
    implements _$$InitializationErrorCopyWith<$Res> {
  __$$InitializationErrorCopyWithImpl(
      _$InitializationError _value, $Res Function(_$InitializationError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InitializationError(
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as InitializationProgress,
      error: null == error ? _value.error : error,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $InitializationProgressCopyWith<$Res> get progress {
    return $InitializationProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc

class _$InitializationError extends InitializationError
    with _IndexedInitializationStateMixin {
  const _$InitializationError(
      {required this.progress, required this.error, required this.stackTrace})
      : super._();

  @override
  final InitializationProgress progress;
  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'InitializationState.error(progress: $progress, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationError &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress,
      const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializationErrorCopyWith<_$InitializationError> get copyWith =>
      __$$InitializationErrorCopyWithImpl<_$InitializationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)
        initialized,
    required TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)
        error,
  }) {
    return error(progress, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function(InitializationProgress progress)? initializing,
    TResult? Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult? Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
  }) {
    return error?.call(progress, this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(InitializationProgress progress)? initializing,
    TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            SharedPreferences sharedPreferences)?
        initialized,
    TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(progress, this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializationNotInitialized value)
        notInitialized,
    required TResult Function(InitializationInitializing value) initializing,
    required TResult Function(InitializationInitialized value) initialized,
    required TResult Function(InitializationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializationNotInitialized value)? notInitialized,
    TResult? Function(InitializationInitializing value)? initializing,
    TResult? Function(InitializationInitialized value)? initialized,
    TResult? Function(InitializationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializationNotInitialized value)? notInitialized,
    TResult Function(InitializationInitializing value)? initializing,
    TResult Function(InitializationInitialized value)? initialized,
    TResult Function(InitializationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class InitializationError extends InitializationState
    implements _IndexedInitializationStateMixin {
  const factory InitializationError(
      {required final InitializationProgress progress,
      required final Object error,
      required final StackTrace stackTrace}) = _$InitializationError;
  const InitializationError._() : super._();

  InitializationProgress get progress;
  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$InitializationErrorCopyWith<_$InitializationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializationEvent {
  bool get shouldSendSentry => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldSendSentry) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldSendSentry)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldSendSentry)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitializationEventCopyWith<InitializationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationEventCopyWith<$Res> {
  factory $InitializationEventCopyWith(
          InitializationEvent value, $Res Function(InitializationEvent) then) =
      _$InitializationEventCopyWithImpl<$Res, InitializationEvent>;
  @useResult
  $Res call({bool shouldSendSentry});
}

/// @nodoc
class _$InitializationEventCopyWithImpl<$Res, $Val extends InitializationEvent>
    implements $InitializationEventCopyWith<$Res> {
  _$InitializationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldSendSentry = null,
  }) {
    return _then(_value.copyWith(
      shouldSendSentry: null == shouldSendSentry
          ? _value.shouldSendSentry
          : shouldSendSentry // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitializeCopyWith<$Res>
    implements $InitializationEventCopyWith<$Res> {
  factory _$$_InitializeCopyWith(
          _$_Initialize value, $Res Function(_$_Initialize) then) =
      __$$_InitializeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool shouldSendSentry});
}

/// @nodoc
class __$$_InitializeCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res, _$_Initialize>
    implements _$$_InitializeCopyWith<$Res> {
  __$$_InitializeCopyWithImpl(
      _$_Initialize _value, $Res Function(_$_Initialize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldSendSentry = null,
  }) {
    return _then(_$_Initialize(
      shouldSendSentry: null == shouldSendSentry
          ? _value.shouldSendSentry
          : shouldSendSentry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initialize implements _Initialize {
  const _$_Initialize({required this.shouldSendSentry});

  @override
  final bool shouldSendSentry;

  @override
  String toString() {
    return 'InitializationEvent.initialize(shouldSendSentry: $shouldSendSentry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialize &&
            (identical(other.shouldSendSentry, shouldSendSentry) ||
                other.shouldSendSentry == shouldSendSentry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shouldSendSentry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      __$$_InitializeCopyWithImpl<_$_Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool shouldSendSentry) initialize,
  }) {
    return initialize(shouldSendSentry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool shouldSendSentry)? initialize,
  }) {
    return initialize?.call(shouldSendSentry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool shouldSendSentry)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(shouldSendSentry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialize value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialize value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialize value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _Initialize implements InitializationEvent {
  const factory _Initialize({required final bool shouldSendSentry}) =
      _$_Initialize;

  @override
  bool get shouldSendSentry;
  @override
  @JsonKey(ignore: true)
  _$$_InitializeCopyWith<_$_Initialize> get copyWith =>
      throw _privateConstructorUsedError;
}
