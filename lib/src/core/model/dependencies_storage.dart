import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/src/core/database/hive/app_database.dart';

abstract class IDependenciesStorage {
  Dio get dio;
  AppDatabase get database;
  SharedPreferences get sharedPreferences;

  void close();
  Future<void> init();
}

class DependenciesStorage implements IDependenciesStorage {
  DependenciesStorage();

  Dio? _dio;

  AppDatabase? _database;

  late SharedPreferences _sharedPreferences;

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

  @override
  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    await database.init();
  }
}
