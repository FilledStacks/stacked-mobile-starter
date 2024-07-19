import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/data_models/onboard_data_model.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
import 'package:stacked_themes/stacked_themes.dart';

class OnboardingViewModel extends IndexTrackingViewModel {
  final _themeService = locator<ThemeService>();
  late OnboardDataModel onboardItem;
  final pageController = PageController();
  late bool isDarkMode;

  OnboardingViewModel() {
    isDarkMode = _themeService.isDarkMode;
  }

  List<OnboardDataModel> onboardItems = [
    OnboardDataModel(
      imageLight: 'assets/png/onboard_image_one_light.png',
      imageDark: 'assets/png/onboard_image_one_dark.png',
      title: S.current.ksOnboardingTitle,
      subtitle: S.current.ksOnboardingSubtitle,
    ),
    OnboardDataModel(
      imageLight: 'assets/png/onboard_image_two_light.png',
      imageDark: 'assets/png/onboard_image_two_dark.png',
      title: S.current.ksOnboardingTitle,
      subtitle: S.current.ksOnboardingSubtitle,
    ),
    OnboardDataModel(
      imageLight: 'assets/png/onboard_image_one_light.png',
      imageDark: 'assets/png/onboard_image_one_dark.png',
      title: S.current.ksOnboardingTitle,
      subtitle: S.current.ksOnboardingSubtitle,
    ),
  ];

  void setCurrentItem() {
    onboardItem = onboardItems.elementAt(currentIndex);
    rebuildUi();
  }

  void actionMoveToLogin() {}

  void actionMoveToGetStarted() {}
}
