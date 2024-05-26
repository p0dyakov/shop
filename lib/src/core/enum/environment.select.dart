// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

part of 'environment.dart';

// **************************************************************************
// MatcherGenerator
// **************************************************************************

extension $EnvironmentMatcherExtension on Environment {
  T when<T>({
    required T Function() production,
    required T Function() staging,
    required T Function() development,
  }) {
    switch (this) {
      case Environment.production:
        return production();
      case Environment.staging:
        return staging();
      case Environment.development:
        return development();
    }
  }

  T whenConst<T>({
    required T production,
    required T staging,
    required T development,
  }) {
    switch (this) {
      case Environment.production:
        return production;
      case Environment.staging:
        return staging;
      case Environment.development:
        return development;
    }
  }

  T? whenOrNull<T>({
    T Function()? production,
    T Function()? staging,
    T Function()? development,
  }) {
    switch (this) {
      case Environment.production:
        return production?.call();
      case Environment.staging:
        return staging?.call();
      case Environment.development:
        return development?.call();
    }
  }

  T? whenConstOrNull<T>({
    T? production,
    T? staging,
    T? development,
  }) {
    switch (this) {
      case Environment.production:
        return production;
      case Environment.staging:
        return staging;
      case Environment.development:
        return development;
    }
  }
}
