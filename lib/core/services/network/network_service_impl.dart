import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../constants/failure_message.dart';
import '../../models/failure/failure.dart';
import '../locale/locale_resources_service.dart';
import 'network_info.dart';
import 'network_service.dart';

@LazySingleton(as: NetworkService)
final class NetworkServiceImpl implements NetworkService {
  final LocaleResourcesService localeResourcesService;
  final NetworkInfo networkInfo;
  final Dio _dio;

  NetworkServiceImpl(
    this._dio, {
    required this.localeResourcesService,
    required this.networkInfo,
  });

  @override
  void setBaseUrl(String baseUrl) {
    _dio.options.baseUrl = baseUrl;
  }

  @override
  void setHeader(String key, String value) {
    _dio.options.headers[key] = value;
  }

  @override
  void setHeaders(Map<String, String> headers) {
    _dio.options.headers.addAll(headers);
  }

  @override
  void setToken(String token) {
    _dio.options.headers["Authorization"] = 'Bearer $token';
  }

  @override
  void clearToken() {
    _dio.options.headers.remove("Authorization");
  }

  @override
  String getToken() {
    // In case it doesn't exist, return an empty string
    return _dio.options.headers["Authorization"] as String? ?? '';
  }

  // ---------------------------------------------------------------------------
  //            GET / POST / PUT / DELETE / PATCH - Map<String, dynamic>
  // ---------------------------------------------------------------------------
  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return _tryCatchMap(
      () =>
          _dio.get<Map<String, dynamic>>(url, queryParameters: queryParameters),
    );
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? optionalHeaders,
    Map<String, dynamic>? queryParameters,
  }) {
    return _tryCatchMap(() {
      return _dio.post<Map<String, dynamic>>(
        url,
        data: data,
        queryParameters: queryParameters,
        options: Options(
          headers: {
            ..._dio.options.headers,
            ...(optionalHeaders ?? {}),
          },
        ),
      );
    });
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> put(
    String url, {
    dynamic data,
  }) {
    return _tryCatchMap(
      () => _dio.put<Map<String, dynamic>>(url, data: data),
    );
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> delete(
    String url, {
    dynamic data,
  }) {
    return _tryCatchMap(
      () => _dio.delete<Map<String, dynamic>>(url, data: data),
    );
  }

  @override
  Future<Either<Failure, Response<Map<String, dynamic>>>> patch(
    String url, {
    dynamic data,
  }) {
    return _tryCatchMap(
      () => _dio.patch<Map<String, dynamic>>(url, data: data),
    );
  }

  // ---------------------------------------------------------------------------
  //                  GET LIST - List<dynamic>
  // ---------------------------------------------------------------------------
  @override
  Future<Either<Failure, Response<List<dynamic>>>> getList(String url) async {
    return _tryCatchList(
      () => _dio.get<List<dynamic>>(url),
    );
  }

  // ---------------------------------------------------------------------------
  //                      TRY/CATCH for Map responses
  // ---------------------------------------------------------------------------
  /// Example response for this scenario:
  /// {
  ///   "status": 200,
  ///   "data": [ ...some list... ]
  /// }
  /// Or maybe: { "status": 200, "message": "OK", "data": {...} }
  Future<Either<Failure, Response<Map<String, dynamic>>>> _tryCatchMap(
    AsyncValueGetter<Response<Map<String, dynamic>>> operation,
  ) async {
    try {
      if (!await networkInfo.isConnected) {
        return left(const Failure.noConnection(noConnectionMessage));
      }

      final result = await operation();

      final status = result.statusCode;

      if (status == 401) {
        localeResourcesService.clearSecureStorage();
        clearToken();
        // locator<AppRouter>().replaceAll([const LoginRoute()]);

        return left(
          Failure.responseError(
            result.data?['message']?.toString() ?? unknownErrorMessage,
          ),
        );
      }

      if (status != 200 && status != 201) {
        return left(
          Failure.responseError(
            result.data?['message']?.toString() ??
                'Invalid status code: $status',
          ),
        );
      }

      return right(result);
    } on DioException catch (e) {
      return left(_mapDioExceptionToFailure(e));
    } on TimeoutException {
      return left(const Failure.connectionTimedOut(connectionTimedOutMessage));
    } catch (_) {
      return left(const Failure.unknownError(unknownErrorMessage));
    }
  }

  // ---------------------------------------------------------------------------
  //                     TRY/CATCH for List<dynamic> responses
  // ---------------------------------------------------------------------------
  /// If the endpoint directly returns a list, we rely on the HTTP status code.
  Future<Either<Failure, Response<List<dynamic>>>> _tryCatchList(
    AsyncValueGetter<Response<List<dynamic>>> operation,
  ) async {
    try {
      if (!await networkInfo.isConnected) {
        return left(const Failure.noConnection(noConnectionMessage));
      }

      final result = await operation();

      final httpStatus = result.statusCode;
      if (httpStatus == 401) {
        localeResourcesService.clearSecureStorage();
        clearToken();
        // getIt<AppRouter>().replaceAll([const LoginRoute()]);

        return left(
            const Failure.responseError('Unauthorized (401) - Session ended.'));
      }

      if (httpStatus != 200 && httpStatus != 201) {
        return left(
          Failure.responseError(
            'Invalid HTTP status code: $httpStatus',
          ),
        );
      }

      return right(result);
    } on DioException catch (e) {
      return left(_mapDioExceptionToFailure(e));
    } on TimeoutException {
      return left(const Failure.connectionTimedOut(connectionTimedOutMessage));
    } catch (_) {
      return left(const Failure.unknownError(unknownErrorMessage));
    }
  }

  // ---------------------------------------------------------------------------
  //             Convert DioException => Failure for consistent handling
  // ---------------------------------------------------------------------------
  Failure _mapDioExceptionToFailure(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout) {
      return const Failure.connectionTimedOut(connectionTimedOutMessage);
    }
    // Additional checks for sendTimeout, receiveTimeout, etc.

    final errorData = e.response?.data as Map<String, dynamic>?;
    final apiMessage = errorData?["message"]?.toString();

    return Failure.responseError(
      apiMessage ?? e.message ?? e.error?.toString() ?? unknownErrorMessage,
    );
  }
}
