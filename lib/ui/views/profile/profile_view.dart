import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

import 'profile_viewmodel.dart';
import 'widgets/widgets.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(
            top: 24,
            left: 16,
            right: 16,
            bottom: 32,
          ),
          children: [
            UserCard(
              onEditProfileImageTap: viewModel.actionShowImageSourceBottomSheet,
              onEditProfileTap: viewModel.actionMoveToEditProfile,
            ),
            const SizedBox(
              height: 24,
            ),
            const ProfileTileHeader(
              label: AppStrings.ksHistory,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksBookingHistory,
              icon: Icons.history,
              onTap: viewModel.actionMoveToBookingHistory,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksTransactionHistory,
              icon: Icons.history,
              onTap: viewModel.actionMoveToTransactionHistory,
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            const ProfileTileHeader(
              label: AppStrings.ksSettings,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksPaymentSettings,
              icon: Icons.payment_outlined,
              onTap: viewModel.actionMoveToPayments,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksNotifications,
              icon: Icons.notifications_outlined,
              onTap: viewModel.actionMoveToNotificationSettings,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksAccountSettings,
              icon: Icons.person_outline,
              onTap: viewModel.actionMoveToAccountSettings,
            ),
            const SizedBox(
              height: 16,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            const ProfileTileHeader(
              label: AppStrings.ksHelpAndSupport,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksHelpCenter,
              icon: Icons.notifications_outlined,
              onTap: viewModel.actionHelpCenter,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksReport,
              icon: Icons.report_problem_outlined,
              onTap: viewModel.actionReportProblem,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: AppStrings.ksRateTheApp,
              icon: Icons.star_outline,
              onTap: viewModel.actionRateApp,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: viewModel.actionLogout,
                  child: Text(
                    AppStrings.ksLogOut,
                    style: AppTextStyles.ktsSmall.copyWith(
                      color: context.palette.detailColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: AppStrings.ksVersion,
                    style: AppTextStyles.ktsDetail.copyWith(
                      color: context.palette.detailColor,
                    ),
                    children: [
                      const TextSpan(
                        text: '',
                      ),
                      TextSpan(
                        text: viewModel.versionNumber ?? '--',
                        style: AppTextStyles.ktsDetail.copyWith(
                          color: context.palette.detailColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(ProfileViewModel viewModel) {
    viewModel.loadState();
    super.onViewModelReady(viewModel);
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
