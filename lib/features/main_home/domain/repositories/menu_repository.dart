import 'package:fpdart/fpdart.dart';

import '../../../../core/models/failure/failure.dart';
import '../models/menu_navigation/menu_navigation_model.dart';

abstract class MenuRepository {
  Future<Either<Failure, List<MenuNavigationModel>>> getMenu();
}
