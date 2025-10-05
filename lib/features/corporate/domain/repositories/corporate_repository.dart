import 'package:fpdart/fpdart.dart';
import '../../../../core/models/failure/failure.dart';
import '../models/corporate_model.dart';

abstract class CorporateRepository {
  Future<Either<Failure, List<CorporateModel>>> getCorporateContents();
}
