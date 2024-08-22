import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_mobile_starter/data_models/onboard_data_model.dart';
import 'package:stacked_mobile_starter/ui/common/app_strings.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  late OnboardDataModel onboardItem;
  final pageController = PageController();

  List<OnboardDataModel> onboardItems = [
    const OnboardDataModel(
      imageLight: 'assets/png/onboard_image_one_light.png',
      imageDark: 'assets/png/onboard_image_one_dark.png',
      title: AppStrings.ksOnboardingTitle,
      subtitle: AppStrings.ksOnboardingSubtitle,
    ),
    const OnboardDataModel(
      imageLight: 'assets/png/onboard_image_two_light.png',
      imageDark: 'assets/png/onboard_image_two_dark.png',
      title: AppStrings.ksOnboardingTitle,
      subtitle: AppStrings.ksOnboardingSubtitle,
    ),
    const OnboardDataModel(
      imageLight: 'assets/png/onboard_image_one_light.png',
      imageDark: 'assets/png/onboard_image_one_dark.png',
      title: AppStrings.ksOnboardingTitle,
      subtitle: AppStrings.ksOnboardingSubtitle,
    ),
  ];

  void setCurrentItem() {
    onboardItem = onboardItems.elementAt(currentIndex);
    rebuildUi();
  }

  void actionMoveToLogin() {
    _navigationService.navigateToLoginEmailView();
  }

  void actionMoveToGetStarted() {
    _navigationService.navigateToMobileSignupView();
  }
}
