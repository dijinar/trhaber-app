import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:trnews/core/constants/endpoints.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/locale/locale_resources_service.dart';
import '../../../../core/services/network/network_service.dart';
import '../../domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final LocaleResourcesService localeResourcesService;
  final NetworkService networkService;

  AuthRepositoryImpl({
    required this.localeResourcesService,
    required this.networkService,
  });

  /// 1) isTokenExpired()
  @override
  Future<bool> isTokenExpired() async {
    // localeResourcesService.getAccessToken() => Future<Option<String>>
    final tokenOption = await localeResourcesService.getAccessToken();

    // Eğer localde token yoksa doğrudan expired kabul ediyoruz
    if (tokenOption.isNone()) return true;

    final token = tokenOption.toNullable()!;

    // Dart'ta jwt_decoder ile token’ın süresi geçmiş mi kontrol ediyoruz
    final isExpired = JwtDecoder.isExpired(token);

    if (isExpired) {
      // Token geçersiz, temizliyoruz
      await localeResourcesService.clearSecureStorage();
      networkService.clearToken();
    } else {
      // Token hala geçerliyse, NetworkService’e set edebiliriz
      // log(token, name: "AuthRepositoryImpl");
      networkService.setToken(token);
    }
    return isExpired;
  }

  @override
  Future<Option<Failure>> createToken() async {
    // Gönderilecek body
    final body = {
      "user": "g6HG3DdbcFB4gMJlmS",
      "password": ".eL4g{FN&_-Bp@(ydf](rFOSZsYdz(6c+dja"
    };

    // NetworkService ile POST isteği
    final eitherResponse = await networkService.post(
      Endpoints.createToken,
      data: body,
    );

    return eitherResponse.fold(
      // Left => Failure
      (failure) => some(failure),
      // Right => başarı
      (response) async {
        final responseData = response.data;

        // Örneğin direkt "token" alanını okuyoruz:
        final token = responseData?["token"] as String?;

        // Token varsa kaydedelim:
        if (token != null) {
          await localeResourcesService.setAccessToken(token);
          networkService.setToken(token);
          return none(); // Başarı => hata yok
        } else {
          // API beklediğimiz yapıda dönmediyse
          return some(
            const Failure.responseError("Token not found in response"),
          );
        }
      },
    );
  }
}
