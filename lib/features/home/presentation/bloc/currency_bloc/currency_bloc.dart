import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/currency/currency_model.dart';
import '../../../domain/repositories/currency_repository.dart';

part 'currency_bloc.freezed.dart';

@freezed
class CurrencyEvent with _$CurrencyEvent {
  const factory CurrencyEvent.fetch() = _Fetch;
  const factory CurrencyEvent.convert({
    required String fromCode,
    required String toCode,
    required double amount,
  }) = _Convert;
}

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState.initial() = _Initial;
  const factory CurrencyState.loading() = _Loading;
  const factory CurrencyState.loaded({
    required List<CurrencyModel> currencies,
    double? result,
  }) = Loaded;
  const factory CurrencyState.error(String message) = _Error;
}

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final CurrencyRepository repository;

  CurrencyBloc(this.repository) : super(const _Initial()) {
    on<_Fetch>(_onFetch);
    on<_Convert>(_onConvert);
  }

  Future<void> _onFetch(_Fetch event, Emitter<CurrencyState> emit) async {
    emit(const _Loading());
    try {
      final result = await repository.getCurrencies();
      result.fold(
        (failure) {
          print("Currency fetch error: ${failure.message}"); // Debug log
          emit(_Error("Veri çekme hatası: ${failure.message}"));
        },
        (currencies) {
          if (currencies.isEmpty) {
            emit(const _Error("Döviz verileri boş"));
            return;
          }

          // Add TL currency with value 1, but change from TRY to TL
          final currenciesWithTL = [
            ...currencies,
            const CurrencyModel(
              title: "TL", // Changed from TRY to TL
              value: "1",
              status: "up",
              icon:
                  "https://logowik.com/content/uploads/images/609_newtlsymbol.jpg",
            ),
          ];

          // Debug what currencies we have
          print(
              "Loaded ${currenciesWithTL.length} currencies: ${currenciesWithTL.map((c) => c.title).join(', ')}");

          emit(Loaded(currencies: currenciesWithTL));
        },
      );
    } catch (e, stackTrace) {
      print("Unexpected error in currency fetch: $e");
      print("Stack trace: $stackTrace");
      emit(_Error("Beklenmeyen hata: $e"));
    }
  }

  void _onConvert(_Convert event, Emitter<CurrencyState> emit) {
    final current = state;
    if (current is Loaded) {
      try {
        // Try to find currencies with more robust error handling
        CurrencyModel? fromCurrency;
        CurrencyModel? toCurrency;

        try {
          fromCurrency = current.currencies.firstWhere(
            (e) => e.title.toLowerCase() == event.fromCode.toLowerCase(),
          );
        } catch (e) {
          // Handle case where fromCode doesn't match any currency
          emit(_Error("Para birimi bulunamadı: ${event.fromCode}"));
          return;
        }

        try {
          toCurrency = current.currencies.firstWhere(
            (e) => e.title.toLowerCase() == event.toCode.toLowerCase(),
          );
        } catch (e) {
          // Handle case where toCode doesn't match any currency
          emit(_Error("Para birimi bulunamadı: ${event.toCode}"));
          return;
        }

        final fromValue = _parseValue(fromCurrency.value);
        final toValue = _parseValue(toCurrency.value);

        // Avoid division by zero
        if (toValue == 0) {
          emit(_Error("Geçersiz dönüşüm değeri"));
          return;
        }

        final result = (event.amount * fromValue) / toValue;

        emit(current.copyWith(result: result));
      } catch (e) {
        emit(_Error("Dönüştürme işlemi başarısız: ${e.toString()}"));
      }
    }
  }

  double _parseValue(String raw) {
    try {
      final cleaned =
          raw.replaceAll('.', '').replaceAll(',', '.').replaceAll('\$', '');
      return double.tryParse(cleaned) ?? 1.0; // Default to 1.0 instead of 0
    } catch (e) {
      return 1.0; // Safe default
    }
  }
}
