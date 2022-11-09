import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IDependenciesStorage {
  Dio get dio;
  SharedPreferences get sharedPreferences;

  void close();
}

class DependenciesStorage implements IDependenciesStorage {
  final String _databaseName;
  final SharedPreferences _sharedPreferences;

  DependenciesStorage({
    required String databaseName,
    required SharedPreferences sharedPreferences,
  })  : _databaseName = databaseName,
        _sharedPreferences = sharedPreferences;

  Dio? _dio;

  @override
  Dio get dio => _dio ??= Dio();

  @override
  SharedPreferences get sharedPreferences => _sharedPreferences;

  @override
  Future<void> close() async {
    _dio?.close();
  }
}
