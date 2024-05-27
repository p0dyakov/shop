// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initialization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$InitializationProgressImplCopyWith<$Res>
    implements $InitializationProgressCopyWith<$Res> {
  factory _$$InitializationProgressImplCopyWith(
          _$InitializationProgressImpl value,
          $Res Function(_$InitializationProgressImpl) then) =
      __$$InitializationProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InitializationStep currentStep,
      IEnvironmentStorage? environmentStorage,
      ErrorTrackingDisabler? errorTrackingDisabler});
}

/// @nodoc
class __$$InitializationProgressImplCopyWithImpl<$Res>
    extends _$InitializationProgressCopyWithImpl<$Res,
        _$InitializationProgressImpl>
    implements _$$InitializationProgressImplCopyWith<$Res> {
  __$$InitializationProgressImplCopyWithImpl(
      _$InitializationProgressImpl _value,
      $Res Function(_$InitializationProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? environmentStorage = freezed,
    Object? errorTrackingDisabler = freezed,
  }) {
    return _then(_$InitializationProgressImpl(
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

class _$InitializationProgressImpl extends _InitializationProgress {
  const _$InitializationProgressImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationProgressImpl &&
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
  _$$InitializationProgressImplCopyWith<_$InitializationProgressImpl>
      get copyWith => __$$InitializationProgressImplCopyWithImpl<
          _$InitializationProgressImpl>(this, _$identity);
}

abstract class _InitializationProgress extends InitializationProgress {
  const factory _InitializationProgress(
          {required final InitializationStep currentStep,
          final IEnvironmentStorage? environmentStorage,
          final ErrorTrackingDisabler? errorTrackingDisabler}) =
      _$InitializationProgressImpl;
  const _InitializationProgress._() : super._();

  @override
  InitializationStep get currentStep;
  @override
  IEnvironmentStorage? get environmentStorage;
  @override
  ErrorTrackingDisabler? get errorTrackingDisabler;
  @override
  @JsonKey(ignore: true)
  _$$InitializationProgressImplCopyWith<_$InitializationProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
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
            IDependenciesStorage dependenciesStorage)
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
            IDependenciesStorage dependenciesStorage)?
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
            IDependenciesStorage dependenciesStorage)?
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
abstract class _$$InitializationNotInitializedImplCopyWith<$Res> {
  factory _$$InitializationNotInitializedImplCopyWith(
          _$InitializationNotInitializedImpl value,
          $Res Function(_$InitializationNotInitializedImpl) then) =
      __$$InitializationNotInitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializationNotInitializedImplCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res,
        _$InitializationNotInitializedImpl>
    implements _$$InitializationNotInitializedImplCopyWith<$Res> {
  __$$InitializationNotInitializedImplCopyWithImpl(
      _$InitializationNotInitializedImpl _value,
      $Res Function(_$InitializationNotInitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializationNotInitializedImpl extends InitializationNotInitialized {
  const _$InitializationNotInitializedImpl() : super._();

  @override
  String toString() {
    return 'InitializationState.notInitialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationNotInitializedImpl);
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
            IDependenciesStorage dependenciesStorage)
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
            IDependenciesStorage dependenciesStorage)?
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
            IDependenciesStorage dependenciesStorage)?
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
  const factory InitializationNotInitialized() =
      _$InitializationNotInitializedImpl;
  const InitializationNotInitialized._() : super._();
}

/// @nodoc
abstract class _$$InitializationInitializingImplCopyWith<$Res> {
  factory _$$InitializationInitializingImplCopyWith(
          _$InitializationInitializingImpl value,
          $Res Function(_$InitializationInitializingImpl) then) =
      __$$InitializationInitializingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InitializationProgress progress});

  $InitializationProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$InitializationInitializingImplCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res,
        _$InitializationInitializingImpl>
    implements _$$InitializationInitializingImplCopyWith<$Res> {
  __$$InitializationInitializingImplCopyWithImpl(
      _$InitializationInitializingImpl _value,
      $Res Function(_$InitializationInitializingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
  }) {
    return _then(_$InitializationInitializingImpl(
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

class _$InitializationInitializingImpl extends InitializationInitializing
    with _IndexedInitializationStateMixin {
  const _$InitializationInitializingImpl({required this.progress}) : super._();

  @override
  final InitializationProgress progress;

  @override
  String toString() {
    return 'InitializationState.initializing(progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationInitializingImpl &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializationInitializingImplCopyWith<_$InitializationInitializingImpl>
      get copyWith => __$$InitializationInitializingImplCopyWithImpl<
          _$InitializationInitializingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            IDependenciesStorage dependenciesStorage)
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
            IDependenciesStorage dependenciesStorage)?
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
            IDependenciesStorage dependenciesStorage)?
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
      _$InitializationInitializingImpl;
  const InitializationInitializing._() : super._();

  InitializationProgress get progress;
  @JsonKey(ignore: true)
  _$$InitializationInitializingImplCopyWith<_$InitializationInitializingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializationInitializedImplCopyWith<$Res> {
  factory _$$InitializationInitializedImplCopyWith(
          _$InitializationInitializedImpl value,
          $Res Function(_$InitializationInitializedImpl) then) =
      __$$InitializationInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {IEnvironmentStorage environmentStorage,
      ErrorTrackingDisabler errorTrackingDisabler,
      IDependenciesStorage dependenciesStorage});
}

/// @nodoc
class __$$InitializationInitializedImplCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res,
        _$InitializationInitializedImpl>
    implements _$$InitializationInitializedImplCopyWith<$Res> {
  __$$InitializationInitializedImplCopyWithImpl(
      _$InitializationInitializedImpl _value,
      $Res Function(_$InitializationInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environmentStorage = null,
    Object? errorTrackingDisabler = null,
    Object? dependenciesStorage = null,
  }) {
    return _then(_$InitializationInitializedImpl(
      environmentStorage: null == environmentStorage
          ? _value.environmentStorage
          : environmentStorage // ignore: cast_nullable_to_non_nullable
              as IEnvironmentStorage,
      errorTrackingDisabler: null == errorTrackingDisabler
          ? _value.errorTrackingDisabler
          : errorTrackingDisabler // ignore: cast_nullable_to_non_nullable
              as ErrorTrackingDisabler,
      dependenciesStorage: null == dependenciesStorage
          ? _value.dependenciesStorage
          : dependenciesStorage // ignore: cast_nullable_to_non_nullable
              as IDependenciesStorage,
    ));
  }
}

/// @nodoc

class _$InitializationInitializedImpl extends InitializationInitialized {
  const _$InitializationInitializedImpl(
      {required this.environmentStorage,
      required this.errorTrackingDisabler,
      required this.dependenciesStorage})
      : super._();

  @override
  final IEnvironmentStorage environmentStorage;
  @override
  final ErrorTrackingDisabler errorTrackingDisabler;
  @override
  final IDependenciesStorage dependenciesStorage;

  @override
  String toString() {
    return 'InitializationState.initialized(environmentStorage: $environmentStorage, errorTrackingDisabler: $errorTrackingDisabler, dependenciesStorage: $dependenciesStorage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationInitializedImpl &&
            (identical(other.environmentStorage, environmentStorage) ||
                other.environmentStorage == environmentStorage) &&
            (identical(other.errorTrackingDisabler, errorTrackingDisabler) ||
                other.errorTrackingDisabler == errorTrackingDisabler) &&
            (identical(other.dependenciesStorage, dependenciesStorage) ||
                other.dependenciesStorage == dependenciesStorage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, environmentStorage,
      errorTrackingDisabler, dependenciesStorage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializationInitializedImplCopyWith<_$InitializationInitializedImpl>
      get copyWith => __$$InitializationInitializedImplCopyWithImpl<
          _$InitializationInitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            IDependenciesStorage dependenciesStorage)
        initialized,
    required TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)
        error,
  }) {
    return initialized(
        environmentStorage, errorTrackingDisabler, dependenciesStorage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notInitialized,
    TResult? Function(InitializationProgress progress)? initializing,
    TResult? Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            IDependenciesStorage dependenciesStorage)?
        initialized,
    TResult? Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
  }) {
    return initialized?.call(
        environmentStorage, errorTrackingDisabler, dependenciesStorage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notInitialized,
    TResult Function(InitializationProgress progress)? initializing,
    TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            IDependenciesStorage dependenciesStorage)?
        initialized,
    TResult Function(InitializationProgress progress, Object error,
            StackTrace stackTrace)?
        error,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(
          environmentStorage, errorTrackingDisabler, dependenciesStorage);
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
          required final IDependenciesStorage dependenciesStorage}) =
      _$InitializationInitializedImpl;
  const InitializationInitialized._() : super._();

  IEnvironmentStorage get environmentStorage;
  ErrorTrackingDisabler get errorTrackingDisabler;
  IDependenciesStorage get dependenciesStorage;
  @JsonKey(ignore: true)
  _$$InitializationInitializedImplCopyWith<_$InitializationInitializedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializationErrorImplCopyWith<$Res> {
  factory _$$InitializationErrorImplCopyWith(_$InitializationErrorImpl value,
          $Res Function(_$InitializationErrorImpl) then) =
      __$$InitializationErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {InitializationProgress progress, Object error, StackTrace stackTrace});

  $InitializationProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$$InitializationErrorImplCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res, _$InitializationErrorImpl>
    implements _$$InitializationErrorImplCopyWith<$Res> {
  __$$InitializationErrorImplCopyWithImpl(_$InitializationErrorImpl _value,
      $Res Function(_$InitializationErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progress = null,
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$InitializationErrorImpl(
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

class _$InitializationErrorImpl extends InitializationError
    with _IndexedInitializationStateMixin {
  const _$InitializationErrorImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationErrorImpl &&
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
  _$$InitializationErrorImplCopyWith<_$InitializationErrorImpl> get copyWith =>
      __$$InitializationErrorImplCopyWithImpl<_$InitializationErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notInitialized,
    required TResult Function(InitializationProgress progress) initializing,
    required TResult Function(
            IEnvironmentStorage environmentStorage,
            ErrorTrackingDisabler errorTrackingDisabler,
            IDependenciesStorage dependenciesStorage)
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
            IDependenciesStorage dependenciesStorage)?
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
            IDependenciesStorage dependenciesStorage)?
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
      required final StackTrace stackTrace}) = _$InitializationErrorImpl;
  const InitializationError._() : super._();

  InitializationProgress get progress;
  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$InitializationErrorImplCopyWith<_$InitializationErrorImpl> get copyWith =>
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
abstract class _$$InitializeImplCopyWith<$Res>
    implements $InitializationEventCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool shouldSendSentry});
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shouldSendSentry = null,
  }) {
    return _then(_$InitializeImpl(
      shouldSendSentry: null == shouldSendSentry
          ? _value.shouldSendSentry
          : shouldSendSentry // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitializeImpl implements _Initialize {
  const _$InitializeImpl({required this.shouldSendSentry});

  @override
  final bool shouldSendSentry;

  @override
  String toString() {
    return 'InitializationEvent.initialize(shouldSendSentry: $shouldSendSentry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeImpl &&
            (identical(other.shouldSendSentry, shouldSendSentry) ||
                other.shouldSendSentry == shouldSendSentry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shouldSendSentry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      __$$InitializeImplCopyWithImpl<_$InitializeImpl>(this, _$identity);

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
      _$InitializeImpl;

  @override
  bool get shouldSendSentry;
  @override
  @JsonKey(ignore: true)
  _$$InitializeImplCopyWith<_$InitializeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
