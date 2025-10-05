import 'package:flutter/material.dart';

class NewsCategoryColors extends ThemeExtension<NewsCategoryColors> {
  final Color defense;
  final Color economy;
  final Color sports;
  final Color politics;

  const NewsCategoryColors({
    required this.defense,
    required this.economy,
    required this.sports,
    required this.politics,
  });

  @override
  NewsCategoryColors copyWith({
    Color? defense,
    Color? economy,
    Color? sports,
    Color? politics,
  }) {
    return NewsCategoryColors(
      defense: defense ?? this.defense,
      economy: economy ?? this.economy,
      sports: sports ?? this.sports,
      politics: politics ?? this.politics,
    );
  }

  @override
  NewsCategoryColors lerp(ThemeExtension<NewsCategoryColors>? other, double t) {
    if (other is! NewsCategoryColors) return this;
    return NewsCategoryColors(
      defense: Color.lerp(defense, other.defense, t)!,
      economy: Color.lerp(economy, other.economy, t)!,
      sports: Color.lerp(sports, other.sports, t)!,
      politics: Color.lerp(politics, other.politics, t)!,
    );
  }
}
