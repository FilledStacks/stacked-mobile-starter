import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/data_models/onboard_data_model.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';

class OnboardingViewModel extends IndexTrackingViewModel {
  late OnboardDataModel onboardItem;
  final pageController = PageController();

  List<OnboardDataModel> onboardItems = [
    OnboardDataModel(
      image: 'assets/png/onboard_image_one_light.png',
      title: S.current.ksOnboardingTitle,
      subtitle: S.current.ksOnboardingSubtitle,
    ),
    OnboardDataModel(
      image: 'assets/png/onboard_image_two_light.png',
      title: S.current.ksOnboardingTitle,
      subtitle: S.current.ksOnboardingSubtitle,
    ),
    OnboardDataModel(
      image: 'assets/png/onboard_image_one_light.png',
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
