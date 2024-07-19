import 'package:flutter/material.dart';

class Palette extends ThemeExtension<Palette> {
  final Color textColor;
  final Color onboardingSubtitlesColor;
  final Color primaryButtonColor;
  final Color primaryButtonTextColor;
  final Color iconColor;
  final Color onboardActiveIndicator;
  final Color onboardInactiveIndicator;

  Palette({
    required this.textColor,
    required this.onboardingSubtitlesColor,
    required this.primaryButtonColor,
    required this.primaryButtonTextColor,
    required this.iconColor,
    required this.onboardActiveIndicator,
    required this.onboardInactiveIndicator,
  });

  @override
  ThemeExtension<Palette> copyWith({
    Color? textColor,
    Color? onboardingSubtitlesColor,
    Color? primaryButtonColor,
    Color? primaryButtonTextColor,
    Color? iconColor,
    Color? onboardActiveIndicator,
    Color? onboardInactiveIndicator,
  }) {
    return Palette(
      textColor: textColor ?? this.textColor,
      onboardingSubtitlesColor:
          onboardingSubtitlesColor ?? this.onboardingSubtitlesColor,
      primaryButtonColor: primaryButtonColor ?? this.primaryButtonColor,
      primaryButtonTextColor:
          primaryButtonTextColor ?? this.primaryButtonTextColor,
      iconColor: iconColor ?? this.iconColor,
      onboardActiveIndicator:
          onboardActiveIndicator ?? this.onboardActiveIndicator,
      onboardInactiveIndicator:
          onboardInactiveIndicator ?? this.onboardInactiveIndicator,
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
      primaryButtonTextColor:
          Color.lerp(primaryButtonTextColor, other.primaryButtonTextColor, t)!,
      iconColor: Color.lerp(iconColor, other.iconColor, t)!,
      onboardActiveIndicator:
          Color.lerp(onboardActiveIndicator, other.onboardActiveIndicator, t)!,
      onboardInactiveIndicator: Color.lerp(
          onboardInactiveIndicator, other.onboardInactiveIndicator, t)!,
    );
  }
}
