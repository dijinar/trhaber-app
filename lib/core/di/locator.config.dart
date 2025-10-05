// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cross_connectivity/cross_connectivity.dart' as _i318;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/authors/data/repositories/author_repository_impl.dart'
    as _i314;
import '../../features/authors/domain/repositories/author_repository.dart'
    as _i784;
import '../../features/corporate/data/repositories/corporate_repository_impl.dart'
    as _i1004;
import '../../features/corporate/domain/repositories/corporate_repository.dart'
    as _i712;
import '../../features/corporate/presentation/bloc/corporate_bloc.dart' as _i55;
import '../../features/home/data/repositories/currency_repository_dummy.dart'
    as _i94;
import '../../features/home/data/repositories/home_repository_impl.dart'
    as _i76;
import '../../features/home/domain/repositories/currency_repository.dart'
    as _i161;
import '../../features/home/domain/repositories/home_repository.dart' as _i0;
import '../../features/main_home/data/repositories/menu_repository_impl.dart'
    as _i820;
import '../../features/main_home/domain/repositories/menu_repository.dart'
    as _i533;
import '../../features/news_detail/data/repositories/news_detail_repository_impl.dart'
    as _i772;
import '../../features/news_detail/domain/repositories/news_detail_repository.dart'
    as _i739;
import '../../features/saved_news/data/dummy_saved_news_repository.dart'
    as _i894;
import '../../features/saved_news/domain/repositories/saved_news_repository.dart'
    as _i870;
import '../../features/search/data/repositories/search_repository_impl.dart'
    as _i1017;
import '../../features/search/domain/repositories/search_repository.dart'
    as _i357;
import '../../features/shared/data/repositories/weather_repository_impl.dart'
    as _i766;
import '../../features/shared/domain/repositories/weather_repository.dart'
    as _i590;
import '../../features/video_news/data/repositories/video_news_repositoriy_impl.dart'
    as _i1011;
import '../../features/video_news/domain/repositories/video_news_repositoriy.dart'
    as _i118;
import '../bloc/app_bloc.dart' as _i406;
import '../config/app_router.dart' as _i753;
import '../config/notification_config.dart' as _i965;
import '../services/locale/locale_resources_service.dart' as _i782;
import '../services/locale/locale_resources_service_impl.dart' as _i694;
import '../services/network/network_info.dart' as _i238;
import '../services/network/network_info_impl.dart' as _i66;
import '../services/network/network_service.dart' as _i408;
import '../services/network/network_service_impl.dart' as _i1001;
import '../services/pending_notification_service.dart' as _i378;
import '../services/saved_news/saved_news_service.dart' as _i798;
import '../services/saved_news/saved_news_service_impl.dart' as _i249;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i318.Connectivity>(() => registerModule.connectivity);
    gh.factory<_i406.AppBloc>(() => _i406.AppBloc());
    gh.singleton<_i965.NotificationConfig>(() => _i965.NotificationConfig());
    gh.singleton<_i753.AppRouter>(() => _i753.AppRouter());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
        () => registerModule.secureStorage);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio());
    gh.lazySingleton<_i378.PendingNotificationService>(
        () => _i378.PendingNotificationService());
    gh.lazySingleton<_i238.NetworkInfo>(
        () => _i66.NetworkInfoImpl(connectivity: gh<_i318.Connectivity>()));
    gh.lazySingleton<_i870.SavedNewsRepository>(
        () => _i894.DummySavedNewsRepository());
    gh.lazySingleton<_i798.SavedNewsService>(
        () => _i249.SavedNewsServiceImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i782.LocaleResourcesService>(
        () => _i694.LocaleResourcesServiceImpl(
              secureStorage: gh<_i558.FlutterSecureStorage>(),
              sharedPreferences: gh<_i460.SharedPreferences>(),
            ));
    gh.lazySingleton<_i408.NetworkService>(() => _i1001.NetworkServiceImpl(
          gh<_i361.Dio>(),
          localeResourcesService: gh<_i782.LocaleResourcesService>(),
          networkInfo: gh<_i238.NetworkInfo>(),
        ));
    gh.singleton<_i0.HomeRepository>(
        () => _i76.HomeRepositoryImpl(gh<_i408.NetworkService>()));
    gh.lazySingleton<_i533.MenuRepository>(
        () => _i820.MenuRepositoryImpl(gh<_i408.NetworkService>()));
    gh.lazySingleton<_i787.AuthRepository>(() => _i153.AuthRepositoryImpl(
          localeResourcesService: gh<_i782.LocaleResourcesService>(),
          networkService: gh<_i408.NetworkService>(),
        ));
    gh.lazySingleton<_i590.WeatherRepository>(
        () => _i766.WeatherRepositoryImpl(gh<_i408.NetworkService>()));
    gh.lazySingleton<_i712.CorporateRepository>(
        () => _i1004.CorporateRepositoryImpl(gh<_i408.NetworkService>()));
    gh.lazySingleton<_i161.CurrencyRepository>(
        () => _i94.DummyCurrencyRepository(gh<_i408.NetworkService>()));
    gh.singleton<_i118.VideoNewsRepository>(
        () => _i1011.VideoNewsRepositoryImpl(gh<_i408.NetworkService>()));
    gh.lazySingleton<_i739.NewsDetailRepository>(
        () => _i772.NewsDetailsRepositoryImpl(
              gh<_i408.NetworkService>(),
              gh<_i361.Dio>(),
            ));
    gh.lazySingleton<_i357.SearchRepository>(
        () => _i1017.SearchRepositoryImpl(gh<_i408.NetworkService>()));
    gh.factory<_i55.CorporateBloc>(
        () => _i55.CorporateBloc(gh<_i712.CorporateRepository>()));
    gh.lazySingleton<_i784.AuthorRepository>(
        () => _i314.AuthorRepositoryImpl(gh<_i408.NetworkService>()));
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
