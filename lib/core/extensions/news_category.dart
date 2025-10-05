import 'dart:ui';

enum NewsCategory { defense, economy, sports, politics }

extension NewsCategoryX on NewsCategory {
  String get label {
    switch (this) {
      case NewsCategory.defense:
        return 'Savunma';
      case NewsCategory.economy:
        return 'Ekonomi';
      case NewsCategory.sports:
        return 'Spor';
      case NewsCategory.politics:
        return 'Politika';
    }
  }

  Color get color {
    switch (this) {
      case NewsCategory.defense:
        return const Color(0xFF673920);
      case NewsCategory.economy:
        return const Color(0xFFDBC64C);
      case NewsCategory.sports:
        return const Color(0xFF20B10E);
      case NewsCategory.politics:
        return const Color(0xFF6A1B9A);
    }
  }
}
