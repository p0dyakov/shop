import 'package:flutter/material.dart';
import 'package:pure/pure.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/src/core/model/dependencies_storage.dart';
import 'package:shop/src/core/model/repository_storage.dart';
import 'package:shop/src/core/widget/scope/dependencies_scope.dart';
import 'package:shop/src/core/widget/scope/environment_scope.dart';
import 'package:shop/src/core/widget/scope/repository_scope.dart';
import 'package:shop/src/feature/app/bloc/initialization_bloc.dart';
import 'package:shop/src/feature/app/widget/app_configuration.dart';
import 'package:shop/src/feature/app/widget/app_lifecycle_scope.dart';
import 'package:shop/src/feature/settings/widget/scope/settings_scope.dart';

class ShopApp extends StatelessWidget {
  final InitializationData initializationData;

  const ShopApp({
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
