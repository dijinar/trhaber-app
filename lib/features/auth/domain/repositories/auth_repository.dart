import 'package:fpdart/fpdart.dart';

import '../../../../core/models/failure/failure.dart';

/// Auth için gereken temel kontratı tanımlar.
abstract class AuthRepository {
  Future<bool> isTokenExpired();

  Future<Option<Failure>> createToken();
}
