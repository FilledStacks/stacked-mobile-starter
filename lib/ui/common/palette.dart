import 'package:flutter/material.dart';

class Palette extends ThemeExtension<Palette> {
  final Color textColor;
  final Color onboardingSubtitlesColor;
  final Color primaryButtonColor;
  final Color iconColor;

  Palette({
    required this.textColor,
    required this.onboardingSubtitlesColor,
    required this.primaryButtonColor,
    required this.iconColor,
  });

  @override
  ThemeExtension<Palette> copyWith({
    Color? textColor,
    Color? onboardingSubtitlesColor,
    Color? primaryButtonColor,
    Color? iconColor,
  }) {
    return Palette(
      textColor: textColor ?? this.textColor,
      onboardingSubtitlesColor:
          onboardingSubtitlesColor ?? this.onboardingSubtitlesColor,
      primaryButtonColor: primaryButtonColor ?? this.primaryButtonColor,
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  ThemeExtension<Palette> lerp(
    covariant ThemeExtension<Palette>? other,
    double t,
  ) {
    if (other is! Palette) {
      return this;
    }
    return Palette(
      textColor: Color.lerp(textColor, other.textColor, t)!,
      onboardingSubtitlesColor: Color.lerp(
          onboardingSubtitlesColor, other.onboardingSubtitlesColor, t)!,
      primaryButtonColor:
          Color.lerp(primaryButtonColor, other.primaryButtonColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
    );
  }
}
