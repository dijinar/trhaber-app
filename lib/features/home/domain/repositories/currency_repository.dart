import 'package:fpdart/fpdart.dart';

import '../../../../core/models/failure/failure.dart' show Failure;
import '../models/currency/currency_model.dart';

abstract class CurrencyRepository {
  Future<Either<Failure, List<CurrencyModel>>> getCurrencies();
}
