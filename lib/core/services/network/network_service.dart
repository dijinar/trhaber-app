import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import '../../models/failure/failure.dart';

/// This is the abstract contract for your network service.
/// It only contains method signatures, no implementation.
abstract class NetworkService {
  /// Sets the base URL for all requests.
  void setBaseUrl(String baseUrl);

  /// Sets a single header key-value pair.
  void setHeader(String key, String value);

  /// Adds multiple headers at once.
  void setHeaders(Map<String, String> headers);

  /// Sets an Authorization token.
  void setToken(String token);

  /// Clears the Authorization token.
  void clearToken();

  /// Retrieves the current Authorization token (if any).
  String getToken();

  /// Basic GET request that returns a Map<String, dynamic>.
  Future<Either<Failure, Response<Map<String, dynamic>>>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  });

  /// Basic POST request that returns a Map<String, dynamic>.
  Future<Either<Failure, Response<Map<String, dynamic>>>> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? optionalHeaders,
    Map<String, dynamic>? queryParameters,
  });

  /// Basic PUT request that returns a Map<String, dynamic>.
  Future<Either<Failure, Response<Map<String, dynamic>>>> put(
    String url, {
    dynamic data,
  });

  /// Basic DELETE request that returns a Map<String, dynamic>.
  Future<Either<Failure, Response<Map<String, dynamic>>>> delete(
    String url, {
    dynamic data,
  });

  /// Basic PATCH request that returns a Map<String, dynamic>.
  Future<Either<Failure, Response<Map<String, dynamic>>>> patch(
    String url, {
    dynamic data,
  });

  /// A specialized GET request that returns a List<dynamic> instead of a Map.
  Future<Either<Failure, Response<List<dynamic>>>> getList(String url);
}
