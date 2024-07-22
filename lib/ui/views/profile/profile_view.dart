import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
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
            ProfileTileHeader(
              label: S.of(context).ksHistory,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksBookingHistory,
              icon: Icons.history,
              onTap: viewModel.actionMoveToBookingHistory,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksTransactionHistory,
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
            ProfileTileHeader(
              label: S.of(context).ksSettings,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksPaymentSettings,
              icon: Icons.payment_outlined,
              onTap: viewModel.actionMoveToPayments,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksNotifications,
              icon: Icons.notifications_outlined,
              onTap: viewModel.actionMoveToNotificationSettings,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksAccountSettings,
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
            ProfileTileHeader(
              label: S.of(context).ksHelpAndSupport,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksHelpCenter,
              icon: Icons.notifications_outlined,
              onTap: viewModel.actionHelpCenter,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksReport,
              icon: Icons.report_problem_outlined,
              onTap: viewModel.actionReportProblem,
            ),
            const SizedBox(
              height: 16,
            ),
            ProfileTile(
              title: S.of(context).ksRateTheApp,
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
                    S.of(context).ksLogOut,
                    style: AppTextStyles.ktsSmall.copyWith(
                      color: context.palette.detailColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Text(
                  S.of(context).ksVersion(viewModel.versionNumber ?? '--'),
                  style: AppTextStyles.ktsDetail.copyWith(
                    color: context.palette.detailColor,
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
