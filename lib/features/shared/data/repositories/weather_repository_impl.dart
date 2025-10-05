import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:trnews/core/services/network/network_service.dart';

import '../../../../core/constants/endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../domain/models/weather_model.dart';

import '../../domain/repositories/weather_repository.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl extends WeatherRepository {
  final NetworkService networkService;

  // Cache to store weather data by city
  final Map<String, WeatherModel> _weatherCache = {};

  // Optional: Add cache expiration (time in milliseconds)
  final Map<String, DateTime> _cacheTimes = {};
  final Duration _cacheExpiration = const Duration(hours: 1);

  WeatherRepositoryImpl(this.networkService);

  @override
  Future<Either<Failure, WeatherModel>> getWeather({
    required String city,
  }) async {
    // Check if data exists in cache and is not expired
    if (_weatherCache.containsKey(city)) {
      final cacheTime = _cacheTimes[city];
      final now = DateTime.now();

      if (cacheTime != null && now.difference(cacheTime) < _cacheExpiration) {
        // Return cached data if not expired
        return right(_weatherCache[city]!);
      }
    }

    // If not in cache or expired, fetch from network
    final result = await networkService.post(Endpoints.weather, data: {
      'city': city,
    });

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'] as Map<String, dynamic>;
          final model = WeatherModel.fromJson(data);
          final updatedModel = model.copyWith(city: city);

          // Store in cache
          _weatherCache[city] = updatedModel;
          _cacheTimes[city] = DateTime.now();

          return right(updatedModel);
        } catch (e) {
          print('Weather parsing error: $e');
          return const Left(
            Failure.parsingError('Hava durumu verisi çözümlenemedi'),
          );
        }
      },
    );
  }
}
