// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'initialization_bloc.dart';

// **************************************************************************
// SelectorGenerator
// **************************************************************************

abstract class InitializationData$ {
  InitializationData$._();

  static ErrorTrackingDisabler errorTrackingDisabler(
          InitializationData model) =>
      model.errorTrackingDisabler;
  static IEnvironmentStorage environmentStorage(InitializationData model) =>
      model.environmentStorage;
  static SharedPreferences sharedPreferences(InitializationData model) =>
      model.sharedPreferences;
}

abstract class _IndexedInitializationStateMixin$ {
  _IndexedInitializationStateMixin$._();

  // ignore: unused_element
  static InitializationProgress progress(
          _IndexedInitializationStateMixin model) =>
      model.progress;
  static int stepsCompleted(_IndexedInitializationStateMixin model) =>
      model.stepsCompleted;
}

// **************************************************************************
// MatcherGenerator
// **************************************************************************

extension $InitializationStepMatcherExtension on InitializationStep {
  T when<T>({
    required T Function() environment,
    required T Function() errorTracking,
    required T Function() sharedPreferences,
  }) {
    switch (this) {
      case InitializationStep.environment:
        return environment();
      case InitializationStep.errorTracking:
        return errorTracking();
      case InitializationStep.sharedPreferences:
        return sharedPreferences();
    }
  }

  T whenConst<T>({
    required T environment,
    required T errorTracking,
    required T sharedPreferences,
  }) {
    switch (this) {
      case InitializationStep.environment:
        return environment;
      case InitializationStep.errorTracking:
        return errorTracking;
      case InitializationStep.sharedPreferences:
        return sharedPreferences;
    }
  }
}
