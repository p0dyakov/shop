// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'initialization_bloc.dart';

// **************************************************************************
// SelectorGenerator
// **************************************************************************

abstract class InitializationData$ {
  InitializationData$._();

  static ErrorTrackingDisabler errorTrackingDisabler(InitializationData model) => model.errorTrackingDisabler;

  static IEnvironmentStorage environmentStorage(InitializationData model) => model.environmentStorage;

  static DependenciesStorage dependenciesStorage(InitializationData model) => model.dependenciesStorage;
}

abstract class _IndexedInitializationStateMixin$ {
  _IndexedInitializationStateMixin$._();

  static InitializationProgress progress(_IndexedInitializationStateMixin model) => model.progress;

  static int stepsCompleted(_IndexedInitializationStateMixin model) => model.stepsCompleted;
}

// **************************************************************************
// MatcherGenerator
// **************************************************************************

extension $InitializationStepMatcherExtension on InitializationStep {
  T when<T>({
    required T Function() environment,
    required T Function() errorTracking,
    required T Function() dependencies,
  }) {
    switch (this) {
      case InitializationStep.environment:
        return environment();
      case InitializationStep.errorTracking:
        return errorTracking();
      case InitializationStep.dependencies:
        return dependencies();
    }
  }

  T whenConst<T>({
    required T environment,
    required T errorTracking,
    required T dependencies,
  }) {
    switch (this) {
      case InitializationStep.environment:
        return environment;
      case InitializationStep.errorTracking:
        return errorTracking;
      case InitializationStep.dependencies:
        return dependencies;
    }
  }

  T? whenOrNull<T>({
    T Function()? environment,
    T Function()? errorTracking,
    T Function()? dependencies,
  }) {
    switch (this) {
      case InitializationStep.environment:
        return environment?.call();
      case InitializationStep.errorTracking:
        return errorTracking?.call();
      case InitializationStep.dependencies:
        return dependencies?.call();
    }
  }

  T? whenConstOrNull<T>({
    T? environment,
    T? errorTracking,
    T? dependencies,
  }) {
    switch (this) {
      case InitializationStep.environment:
        return environment;
      case InitializationStep.errorTracking:
        return errorTracking;
      case InitializationStep.dependencies:
        return dependencies;
    }
  }
}
