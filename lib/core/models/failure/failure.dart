import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  /// Beklenmeyen bilinmeyen hatalar (örneğin try-catch içinde yakalanmayanlar)
  const factory Failure.unknownError(String message) = _UnknownError;

  /// İnternet bağlantısı yoksa
  const factory Failure.noConnection(String message) = _NoConnection;

  /// Sunucuya bağlanılamadı (timeout oldu)
  const factory Failure.connectionTimedOut(String message) =
      _ConnectionTimedOut;

  /// API'den gelen response body'de hata varsa
  const factory Failure.responseError(String message,
      {@Default(null) int? statusCode}) = _ResponseError;

  /// Kullanıcı oturumu ya da token geçersiz (auth hataları için)
  const factory Failure.auth(String message) = _Auth;

  /// JSON parsing sırasında hata oluştuysa
  const factory Failure.parsingError(String message) = _ParsingError;

  /// Özel olarak backend validasyon mesajlarını iletmek istersen
  const factory Failure.validationError(String message,
      {@Default([]) List<String> details}) = _ValidationError;

  /// Bilinen başka spesifik durumlar için, örneğin rate-limit (çok fazla istek)
  const factory Failure.tooManyRequests(String message) = _TooManyRequests;
}
