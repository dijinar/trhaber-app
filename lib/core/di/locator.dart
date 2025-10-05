import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:trnews/core/di/locator.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() {
  locator.init();
}
