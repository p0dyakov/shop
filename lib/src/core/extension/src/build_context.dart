import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_gen/gen_l10n/app_localizations.g.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/src/core/database/hive/app_database.dart';
import 'package:shop/src/core/model/dependencies_storage.dart';
import 'package:shop/src/core/model/environment_storage.dart';
import 'package:shop/src/core/model/repository_storage.dart';
import 'package:shop/src/core/router/app_router.dart';
import 'package:shop/src/core/widget/dependencies_scope.dart';
import 'package:shop/src/core/widget/environment_scope.dart';
import 'package:shop/src/core/widget/repository_scope.dart';

extension BuildContextX on BuildContext {
  IEnvironmentStorage get environment => EnvironmentScope.of(this);
  IDependenciesStorage get dependencies => DependenciesScope.of(this);
  Dio get dio => dependencies.dio;
  SharedPreferences get sharedPreferences => dependencies.sharedPreferences;
  AppDatabase get database => dependencies.database;
  IRepositoryStorage get repository => RepositoryScope.of(this);

  // ignore: avoid-non-null-assertion
  AppLocalizations get localized => AppLocalizations.of(this)!;

  StackRouter get router => AutoRouter.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get screenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
