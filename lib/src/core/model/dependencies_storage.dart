import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/src/core/database/hive/app_database.dart';

abstract class IDependenciesStorage {
  Dio get dio;
  AppDatabase get database;
  SharedPreferences get sharedPreferences;

  void close();
}

class DependenciesStorage implements IDependenciesStorage {
  final SharedPreferences _sharedPreferences;

  DependenciesStorage({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  Dio? _dio;

  AppDatabase? _database;

  @override
  Dio get dio => _dio ??= Dio();

  @override
  AppDatabase get database => _database ??= AppDatabase();

  @override
  SharedPreferences get sharedPreferences => _sharedPreferences;

  @override
  Future<void> close() async {
    _dio?.close();
    await _database?.close();
  }
}
