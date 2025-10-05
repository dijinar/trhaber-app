import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/weather_model.dart';
import '../../domain/repositories/weather_repository.dart';

part 'weather_bloc.freezed.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetch({required String city}) = _Fetch;
  const factory WeatherEvent.refresh({required String city}) = _Refresh;
}

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.loaded(WeatherModel data) = _Loaded;
  const factory WeatherState.error(String message) = _Error;
}

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository repository;

  WeatherBloc(this.repository) : super(const WeatherState.initial()) {
    on<_Fetch>(_onFetch);
    on<_Refresh>(_onFetch);
  }

  Future<void> _onFetch(
    WeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState.loading());

    final result = await repository.getWeather(
      city: event.city,
    );

    result.fold(
      (failure) => emit(WeatherState.error(failure.message)),
      (model) => emit(WeatherState.loaded(model)),
    );
  }
}
