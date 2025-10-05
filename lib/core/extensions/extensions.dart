import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/gen/assets.gen.dart';
import 'package:trnews/l10n/app_localizations.dart';

extension Extensions on BuildContext {
  // Localization Extensions

  AppLocalizations get translate => AppLocalizations.of(this)!;

  List<Locale> get supportedLocales => const [Locale('en'), Locale('tr')];
  Locale get locale => const Locale('tr');

  // Theme Extensions
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;

  // Media Query Extensions
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => mediaQuery.size;
  double get height => size.height;
  double get width => size.width;

  // Navigation Extensions
  NavigatorState get navigator => Navigator.of(this);

  // Assets Extensions
  AssetImage getImage(String name) => AssetImage(name);
  String getImagePath(String name) => 'assets/images/$name';
  String getIconPath(String name) => 'assets/icons/$name';

  // Asset Generation Extensions
  ImageProvider getLogoImage() => Assets.images.logo.provider();
  ImageProvider getIconImage(String name) =>
      AssetImage('assets/icons/$name.png');

  // Responsive Extensions
  bool get isMobile => width < 600;
  bool get isTablet => width >= 600 && width < 900;
  bool get isDesktop => width >= 900;

  // Padding Extensions
  EdgeInsets get defaultPadding => const EdgeInsets.all(16.0);
  EdgeInsets get horizontalPadding =>
      const EdgeInsets.symmetric(horizontal: 16.0);
  EdgeInsets get verticalPadding => const EdgeInsets.symmetric(vertical: 16.0);

  // Spacing Extensions
  SizedBox get defaultSpacing => const SizedBox(height: 16.0);
  SizedBox get smallSpacing => const SizedBox(height: 8.0);

  SizedBox get largeSpacing => const SizedBox(height: 24.0);

  // Border Radius Extensions

  BorderRadius get smallBorderRadius => BorderRadius.circular(2.0.r);
  BorderRadius get defaultBorderRadius => BorderRadius.circular(8.0.r);
  BorderRadius get largeBorderRadius => BorderRadius.circular(19.0.r);

  BorderRadius get circularBorderRadius => BorderRadius.circular(30.0.r);

  // Animation Duration Extensions
  Duration get defaultAnimationDuration => const Duration(milliseconds: 300);
  Duration get fastAnimationDuration => const Duration(milliseconds: 200);
  Duration get slowAnimationDuration => const Duration(milliseconds: 500);

  //shadow Extensions
  List<BoxShadow> get defaultBoxShadow => [
        BoxShadow(
          color: Colors.grey.withAlpha(100),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(0, 1),
        )
      ];
  Color hex(String hexColor) {
    return Color(int.parse(hexColor.replaceAll('#', '0xff')));
  }
}
