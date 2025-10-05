import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:trnews/l10n/app_localizations.dart';

class TranslationService {
  static final TranslationService _instance = TranslationService._internal();

  factory TranslationService() {
    return _instance;
  }

  TranslationService._internal();

  Locale currentLocale = const Locale('tr', 'TR');
  GlobalKey<NavigatorState>? _navigatorKey;

  set navigatorKey(GlobalKey<NavigatorState> key) => _navigatorKey = key;

  AppLocalizations get translations {
    if (_navigatorKey?.currentContext != null) {
      return AppLocalizations.of(_navigatorKey!.currentContext!)!;
    }
    throw UnimplementedError(
        'Translations can only be accessed with a valid context');
  }

  List<Locale> get supportedLocales => const [Locale('en'), Locale('tr')];

  List<LocalizationsDelegate<dynamic>> get localizationDelegates => const [
        AppLocalizations.delegate, // <-- BUNU EKLEMEZSEK CRASH YERİZ
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];
}

TranslationService get translationService => TranslationService();
