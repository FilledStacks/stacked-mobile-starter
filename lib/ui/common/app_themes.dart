import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'palette.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.kcSlate500,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Inter',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
    ),
    extensions: [
      Palette(
        textColor: Colors.black,
        onboardingSubtitlesColor: AppColors.kcSlate700,
        primaryButtonColor: Colors.black,
        primaryButtonTextColor: Colors.white,
        iconColor: Colors.black,
        onboardActiveIndicator: AppColors.kcSlate900,
        onboardInactiveIndicator: AppColors.kcSlate300,
        inputFieldFilledColor: Colors.white,
        inputFieldBorderColor: AppColors.kcZinc700,
        inputFieldContentColor: Colors.black,
        inputFieldHintColor: AppColors.kcZinc500,
        subTextColor: AppColors.kcSlate600,
        detailColor: AppColors.kcSlate600,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.kcSlate500,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Inter',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      surfaceTintColor: Colors.black,
    ),
    extensions: [
      Palette(
        textColor: Colors.white,
        onboardingSubtitlesColor: AppColors.kcSlate400,
        primaryButtonColor: Colors.white,
        primaryButtonTextColor: Colors.black,
        iconColor: Colors.white,
        onboardActiveIndicator: Colors.white,
        onboardInactiveIndicator: AppColors.kcSlate500,
        inputFieldFilledColor: AppColors.kcZinc900,
        inputFieldBorderColor: AppColors.kcZinc700,
        inputFieldContentColor: Colors.white,
        inputFieldHintColor: AppColors.kcZinc500,
        subTextColor: AppColors.kcSlate500,
        detailColor: AppColors.kcSlate200,
      ),
    ],
  );
}
