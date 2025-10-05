import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/network/network_service.dart';
import '../../domain/models/currency/currency_model.dart';
import '../../domain/repositories/currency_repository.dart';

@LazySingleton(as: CurrencyRepository)
class DummyCurrencyRepository implements CurrencyRepository {
  final NetworkService networkService;
  DummyCurrencyRepository(this.networkService);
  static const Map<String, String> _defaultIcons = {
    "G.ALTIN": "https://img.icons8.com/ios-filled/50/gold-bars.png",
    "DOLAR": "https://img.icons8.com/ios-filled/50/us-dollar-circled--v1.png",
    "EURO": "https://img.icons8.com/ios-filled/50/euro-pound-exchange.png",
    "STERLİN": "https://img.icons8.com/ios-filled/50/british-pound-circled.png",
    "BIST 100": "https://img.icons8.com/ios-filled/50/combo-chart--v2.png",
    "BITCOIN": "https://img.icons8.com/ios-filled/50/bitcoin.png",
    "G.GÜMÜŞ": "https://img.icons8.com/ios-filled/50/silver-bars.png",
    "BRENT": "https://img.icons8.com/ios-filled/50/oil-industry.png",
  };

  @override
  Future<Either<Failure, List<CurrencyModel>>> getCurrencies() async {
    final result = await networkService.get(Endpoints.currencies);

    return result.fold(
      left,
      (response) {
        try {
          final data = response.data?['data'] as List<dynamic>;

          final currencies = data.map((e) {
            final map = Map<String, dynamic>.from(e as Map);
            final title = map['title'] as String;

            map['icon'] ??= _defaultIcons[title] ?? "";

            return CurrencyModel.fromJson(map);
          }).toList();

          return right(currencies);
        } catch (e) {
          return left(
              const Failure.parsingError("Döviz verileri çözümlenemedi"));
        }
      },
    );
  }
}
