import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trnews/firebase_options.dart';
import 'package:trnews/core/bloc/app_bloc.dart';
import 'package:trnews/core/config/app_router.dart';
import 'package:trnews/core/constants/city.dart';
import 'package:trnews/core/constants/sizes.dart';
import 'package:trnews/core/di/locator.dart';
import 'package:trnews/core/config/notification_config.dart';
import 'package:trnews/core/theme/app_theme.dart';
import 'package:trnews/core/services/translation_service.dart';
import 'package:trnews/features/shared/domain/repositories/weather_repository.dart';
import 'package:trnews/features/shared/presentation/weather/weather_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Önce Firebase'i başlat
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Sonra dependency injection'u yap
  await _initializeDependencies();

  // Uygulama bileşenlerini başlat
  await _initializeApp();

  runApp(const MyApp());
}

Future<void> _initializeDependencies() async {
  // Configure dependencies using locator
  configureDependencies();
}

Future<void> _initializeApp() async {
  // Initialize notifications
  final notificationConfig = locator<NotificationConfig>();
  await notificationConfig.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => AppBloc(),
        ),
        BlocProvider<WeatherBloc>(
          create: (context) => WeatherBloc(locator<WeatherRepository>())
            ..add(WeatherEvent.fetch(city: cities[0])),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: designSize,
            splitScreenMode: true,
            builder: (context, child) => GestureDetector(
              onTap: () {
                final currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
              },
              child: MaterialApp.router(
                debugShowCheckedModeBanner: false,
                title: 'TR Haber',
                theme: AppTheme.lightTheme,
                darkTheme: AppTheme.darkTheme,
                themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                locale: translationService.currentLocale,
                supportedLocales: translationService.supportedLocales,
                localizationsDelegates:
                    translationService.localizationDelegates,
                localeResolutionCallback: (locale, supportedLocales) {
                  if (locale == null) return const Locale('tr');
                  return supportedLocales.contains(locale)
                      ? locale
                      : const Locale('tr');
                },
                routerConfig: locator<AppRouter>().config(),
              ),
            ),
          );
        },
      ),
    );
  }
}
