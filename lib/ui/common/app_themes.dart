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
    extensions: [
      Palette(
        textColor: Colors.black,
        onboardingSubtitlesColor: AppColors.kcSlate700,
        primaryButtonColor: Colors.black,
        iconColor: Colors.black,
      ),
    ],
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.kcSlate500,
    scaffoldBackgroundColor: Colors.black,
    fontFamily: 'Inter',
    extensions: [
      Palette(
        textColor: Colors.white,
        onboardingSubtitlesColor: AppColors.kcSlate400,
        primaryButtonColor: Colors.white,
        iconColor: Colors.white,
      ),
    ],
  );
}
