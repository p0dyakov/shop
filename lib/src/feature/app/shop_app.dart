import 'package:flutter/material.dart';
import 'package:pure/pure.dart';
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
    required this.initializationData,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => EnvironmentScope(
        create: initializationData.environmentStorage.constant,
        child: AppLifecycleScope(
          errorTrackingDisabler: initializationData.errorTrackingDisabler,
          child: DependenciesScope(
            create: (context) => initializationData.dependenciesStorage,
            child: RepositoryScope(
              create: (context) => RepositoryStorage(
                appDatabase: initializationData.dependenciesStorage.database,
                sharedPreferences: initializationData.dependenciesStorage.sharedPreferences,
              ),
              child: const SettingsScope(
                child: AppConfiguration(),
              ),
            ),
          ),
        ),
      );
}
