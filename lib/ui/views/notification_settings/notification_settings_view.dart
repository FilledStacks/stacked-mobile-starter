import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

import 'notification_settings_viewmodel.dart';
import 'widgets/widgets.dart';

class NotificationSettingsView
    extends StackedView<NotificationSettingsViewModel> {
  const NotificationSettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotificationSettingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        children: [
          Text(
            AppStrings.ksNotificationSettings,
            style: AppTextStyles.ktsH2.copyWith(
              color: context.palette.textColor,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          NotificationCard(
            title: AppStrings.ksBookingAcceptance,
            subtitle: AppStrings.ksBookingAcceptanceSubtitle,
            emailValue: viewModel.bookingAcceptanceEmail,
            smsValue: viewModel.bookingAcceptanceSms,
            inAppValue: viewModel.bookingAcceptancceInApp,
            onEmailChanged: viewModel.actionToggleBookingAcceptanceEmail,
            onSmsChanged: viewModel.actionToggleBookingAcceptanceSms,
            onInAppChanged: viewModel.actionToggleBookingAcceptanceInApp,
            onTurnOfAll: viewModel.actionTurnOffAllBookingAcceptance,
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(),
          const SizedBox(
            height: 24,
          ),
          NotificationCard(
            title: AppStrings.ksPromotionalNotifications,
            subtitle: AppStrings.ksPromotionalNotificationsSubtitle,
            emailValue: viewModel.promotionalNotificationsEmail,
            smsValue: viewModel.promotionalNotificationsSms,
            inAppValue: viewModel.promotionalNotificationsInApp,
            onEmailChanged: viewModel.actionTogglePromotionalNotificationsEmail,
            onSmsChanged: viewModel.actionTogglePromotionalNotificationsSms,
            onInAppChanged: viewModel.actionTogglePromotionalNotificationsInApp,
            onTurnOfAll: viewModel.actionTurnOffAllPromotionalNotifications,
          ),
          const SizedBox(
            height: 24,
          ),
          const Divider(),
          const SizedBox(
            height: 24,
          ),
          NotificationCard(
            title: AppStrings.ksUpdates,
            subtitle: AppStrings.ksUpdatesSubtitle,
            emailValue: viewModel.updatesEmail,
            smsValue: viewModel.updatesSms,
            inAppValue: viewModel.updatesInApp,
            onEmailChanged: viewModel.actionToggleUpdatesEmail,
            onSmsChanged: viewModel.actionToggleUpdatesSms,
            onInAppChanged: viewModel.actionToggleUpdatesInApp,
            onTurnOfAll: viewModel.actionTurnOffAllUpdates,
          ),
        ],
      ),
    );
  }

  @override
  NotificationSettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotificationSettingsViewModel();
}
