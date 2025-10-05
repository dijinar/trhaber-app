import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/constants/colors.dart';
import 'package:trnews/core/constants/text_styles.dart';

import '../extensions/news_category_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.lightBackground,
      primaryColorDark: AppColors.darkPrimary,
      secondaryHeaderColor: AppColors.lightScondaryContainer,
      cardColor: AppColors.lightCard,
      useMaterial3: true,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.lightPrimary,
        onPrimary: AppColors.lightText,
        secondary: AppColors.lightSecondary,
        onSecondary: AppColors.lightTextSecondary,
        primaryContainer: AppColors.lightCard,
        tertiary: AppColors.success,
        error: AppColors.error,
        onError: AppColors.lightText,
        surface: AppColors.lightCard,
        surfaceBright: AppColors.lightBackgroundSecondary,
        onSurface: AppColors.iconColor,
        secondaryContainer: AppColors.darkSecondary,
      ),
      extensions: const [
        NewsCategoryColors(
          defense: AppColors.categoryDefense,
          economy: AppColors.categoryEconomy,
          sports: AppColors.categorySports,
          politics: AppColors.categoryPolitics,
        ),
      ],
      textTheme: TextTheme(
        titleSmall: titleSmall,
        titleMedium: titleMedium,
        titleLarge: titleLarge,
        displaySmall: displaySmall,
        displayMedium: displayMedium,
        displayLarge: displayLarge,
        labelSmall: labelSmall,
        labelMedium: labelMedium,
        labelLarge: labelLarge,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightBackground,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      inputDecorationTheme: InputDecorationTheme(
        // constraints: const BoxConstraints(
        //   minHeight: 50,
        // ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 12.h,
          horizontal: 16.w,
        ),
        hintStyle: TextStyle(
          color: AppColors.lightText.withAlpha(100),
          fontSize: 16.sp,
        ),
        filled: true,
        fillColor: AppColors.lightCard,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.r)),
          borderSide:
              BorderSide(color: AppColors.lightSecondary.withAlpha(200)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide:
              BorderSide(color: AppColors.lightSecondary.withAlpha(200)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide:
              BorderSide(color: AppColors.lightSecondary.withAlpha(200)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide:
              BorderSide(color: AppColors.lightSecondary.withAlpha(200)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide:
              BorderSide(color: AppColors.lightSecondary.withAlpha(200)),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide:
              BorderSide(color: AppColors.lightSecondary.withAlpha(200)),
        ),
        errorStyle: TextStyle(
          color: AppColors.error,
          fontSize: 12.sp,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColors.lightCard,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.darkBackground,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.darkPrimary,
        onPrimary: AppColors.darkText,
        secondary: AppColors.darkSecondary,
        onSecondary: AppColors.darkTextSecondary,
        tertiary: AppColors.success,
        error: AppColors.error,
        onError: AppColors.darkText,
        surface: AppColors.darkCard,
        onSurface: AppColors.darkText,
      ),
      extensions: const [
        NewsCategoryColors(
          defense: AppColors.darkCategoryDefense,
          economy: AppColors.darkCategoryEconomy,
          sports: AppColors.darkCategorySports,
          politics: AppColors.darkCategoryPolitics,
        ),
      ],
    );
  }
}
