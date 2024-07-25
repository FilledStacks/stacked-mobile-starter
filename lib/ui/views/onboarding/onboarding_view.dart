import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            SizedBox(
              height: 317,
              child: PageView.builder(
                itemCount: viewModel.onboardItems.length,
                onPageChanged: (value) {
                  viewModel.setIndex(value);
                  viewModel.setCurrentItem();
                },
                itemBuilder: (context, index) {
                  final item = viewModel.onboardItems.elementAt(index);
                  final isDarkMode = viewModel.isDarkMode;
                  return Builder(
                    builder: (context) {
                      if (isDarkMode) {
                        return Image.asset(
                          item.imageDark ?? '',
                          height: 314,
                          fit: BoxFit.fill,
                        );
                      }

                      return Image.asset(
                        item.imageLight ?? '',
                        height: 314,
                        fit: BoxFit.fill,
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                viewModel.onboardItem.title ?? '',
                textAlign: TextAlign.start,
                style: AppTextStyles.ktsH2.copyWith(
                  color: context.palette.textColor,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                viewModel.onboardItem.subtitle ?? '',
                textAlign: TextAlign.start,
                style: AppTextStyles.ktsP.copyWith(
                  color: context.palette.onboardingSubtitlesColor,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: DotsIndicator(
                dotsCount: viewModel.onboardItems.length,
                position: viewModel.currentIndex,
                decorator: DotsDecorator(
                  activeColor: context.palette.onboardActiveIndicator,
                  color: context.palette.onboardInactiveIndicator,
                  activeSize: const Size(8, 8),
                  size: const Size(8, 8),
                  spacing: const EdgeInsets.all(8),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: PrimaryButton(
                      text: AppStrings.ksLogin,
                      onTap: viewModel.actionMoveToLogin,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: TransparentButton(
                      text: AppStrings.ksGetStarted,
                      onTap: viewModel.actionMoveToGetStarted,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(OnboardingViewModel viewModel) {
    viewModel.setCurrentItem();
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(OnboardingViewModel viewModel) {
    viewModel.pageController.dispose();
    super.onDispose(viewModel);
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
