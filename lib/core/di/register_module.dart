// lib/core/di/register_module.dart

import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  //connectivity
  // @lazySingleton
  Connectivity get connectivity => Connectivity();

  /// FlutterSecureStorage provider
  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  /// SharedPreferences provider (async)
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  /// Dio provider
  @lazySingleton
  Dio dio() {
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Interceptors, logging, etc. ekleyebilirsin
    return dio;
  }

  // /// AppRouter provider
  // @singleton
  // AppRouter get router => AppRouter();
}
