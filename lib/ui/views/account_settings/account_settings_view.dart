import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';

import 'account_settings_viewmodel.dart';
import 'widgets/account_settings_tile.dart';

class AccountSettingsView extends StackedView<AccountSettingsViewModel> {
  const AccountSettingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountSettingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              AppStrings.ksAccountSettings,
              style: AppTextStyles.ktsH2.copyWith(
                color: context.palette.textColor,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: AccountSettingsTile(
              title: AppStrings.ksAccountName,
              onTap: viewModel.showAccountNameBottomSheet,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: AccountSettingsTile(
              title: AppStrings.ksEmail,
              onTap: viewModel.showEmailBottomSheet,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: AccountSettingsTile(
              title: AppStrings.ksPassword,
              onTap: viewModel.showPasswordBottomSheet,
            ),
          ),
        ],
      ),
    );
  }

  @override
  AccountSettingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountSettingsViewModel();
}
