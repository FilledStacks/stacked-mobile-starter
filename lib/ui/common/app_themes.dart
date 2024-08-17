import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';
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
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedLabelStyle: AppTextStyles.ktsActiveLabel,
      unselectedLabelStyle: AppTextStyles.ktsInactiveLabel,
      selectedItemColor: Colors.black,
      unselectedItemColor: AppColors.kcSlate500,
      selectedIconTheme: const IconThemeData(
        color: Colors.black,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.kcSlate500,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.kcSlate200,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.kcSlate900,
      inactiveTrackColor: AppColors.kcSlate100,
      thumbColor: Colors.white,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.kcSlate100,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(200),
      ),
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
        filterBackgroundColor: Colors.white,
        filterBorderColor: AppColors.kcSlate200,
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
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.kcNeutral900,
      selectedLabelStyle: AppTextStyles.ktsActiveLabel,
      unselectedLabelStyle: AppTextStyles.ktsInactiveLabel,
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.kcZinc500,
      selectedIconTheme: const IconThemeData(
        color: Colors.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColors.kcZinc500,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.kcZinc800,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: Colors.white,
      inactiveTrackColor: AppColors.kcZinc700,
      thumbColor: Colors.white,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.kcZinc800,
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(200),
      ),
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
        filterBackgroundColor: AppColors.kcZinc900,
        filterBorderColor: AppColors.kcZinc800,
      ),
    ],
  );
}
