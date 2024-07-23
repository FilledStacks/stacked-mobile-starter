import 'package:flutter/material.dart';

class Palette extends ThemeExtension<Palette> {
  final Color textColor;
  final Color onboardingSubtitlesColor;
  final Color primaryButtonColor;
  final Color primaryButtonTextColor;
  final Color iconColor;
  final Color onboardActiveIndicator;
  final Color onboardInactiveIndicator;
  final Color inputFieldFilledColor;
  final Color inputFieldBorderColor;
  final Color inputFieldHintColor;
  final Color inputFieldContentColor;
  final Color subTextColor;
  final Color detailColor;
  final Color filterBackgroundColor;
  final Color filterBorderColor;

  Palette({
    required this.textColor,
    required this.onboardingSubtitlesColor,
    required this.primaryButtonColor,
    required this.primaryButtonTextColor,
    required this.iconColor,
    required this.onboardActiveIndicator,
    required this.onboardInactiveIndicator,
    required this.inputFieldBorderColor,
    required this.inputFieldFilledColor,
    required this.inputFieldContentColor,
    required this.inputFieldHintColor,
    required this.subTextColor,
    required this.detailColor,
    required this.filterBackgroundColor,
    required this.filterBorderColor,
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
    Color? inputFieldFilledColor,
    Color? inputFieldBorderColor,
    Color? inputFieldHintColor,
    Color? inputFieldContentColor,
    Color? subTextColor,
    Color? detailColor,
    Color? filterBackgroundColor,
    Color? filterBorderColor,
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
      inputFieldFilledColor:
          inputFieldFilledColor ?? this.inputFieldFilledColor,
      inputFieldBorderColor:
          inputFieldBorderColor ?? this.inputFieldBorderColor,
      inputFieldContentColor:
          inputFieldContentColor ?? this.inputFieldContentColor,
      inputFieldHintColor: inputFieldHintColor ?? this.inputFieldHintColor,
      subTextColor: subTextColor ?? this.subTextColor,
      detailColor: detailColor ?? this.detailColor,
      filterBackgroundColor:
          filterBackgroundColor ?? this.filterBackgroundColor,
      filterBorderColor: filterBorderColor ?? this.filterBorderColor,
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
      inputFieldFilledColor:
          Color.lerp(inputFieldFilledColor, other.inputFieldFilledColor, t)!,
      inputFieldBorderColor:
          Color.lerp(inputFieldBorderColor, other.inputFieldBorderColor, t)!,
      inputFieldContentColor:
          Color.lerp(inputFieldContentColor, other.inputFieldContentColor, t)!,
      inputFieldHintColor:
          Color.lerp(inputFieldHintColor, other.inputFieldHintColor, t)!,
      subTextColor: Color.lerp(subTextColor, other.subTextColor, t)!,
      detailColor: Color.lerp(detailColor, other.detailColor, t)!,
      filterBackgroundColor:
          Color.lerp(filterBackgroundColor, other.filterBackgroundColor, t)!,
      filterBorderColor:
          Color.lerp(filterBorderColor, other.filterBorderColor, t)!,
    );
  }
}
