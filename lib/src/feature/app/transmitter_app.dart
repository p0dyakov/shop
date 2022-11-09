import 'package:flutter/material.dart';
import 'package:pure/pure.dart';
import 'package:transmitter/src/core/model/dependencies_storage.dart';
import 'package:transmitter/src/core/model/repository_storage.dart';
import 'package:transmitter/src/core/widget/dependencies_scope.dart';
import 'package:transmitter/src/core/widget/environment_scope.dart';
import 'package:transmitter/src/core/widget/repository_scope.dart';
import 'package:transmitter/src/feature/app/bloc/initialization_bloc.dart';
import 'package:transmitter/src/feature/app/widget/app_configuration.dart';
import 'package:transmitter/src/feature/app/widget/app_lifecycle_scope.dart';
import 'package:transmitter/src/feature/settings/widget/scope/settings_scope.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransmitterApp extends StatelessWidget {
  final InitializationData initializationData;

  const TransmitterApp({
    Key? key,
    required this.initializationData,
  }) : super(key: key);

  SharedPreferences get _sharedPreferences =>
      initializationData.sharedPreferences;

  @override
  Widget build(BuildContext context) => EnvironmentScope(
        create: initializationData.environmentStorage.constant,
        child: AppLifecycleScope(
          errorTrackingDisabler: initializationData.errorTrackingDisabler,
          child: DependenciesScope(
            create: (context) => DependenciesStorage(
              databaseName: 'transmitter_database',
              sharedPreferences: _sharedPreferences,
            ),
            child: RepositoryScope(
              create: (context) => RepositoryStorage(
                appDatabase: DependenciesScope.of(context).database,
                sharedPreferences: _sharedPreferences,
              ),
              child: const SettingsScope(
                child: AppConfiguration(),
              ),
            ),
          ),
        ),
      );
}
