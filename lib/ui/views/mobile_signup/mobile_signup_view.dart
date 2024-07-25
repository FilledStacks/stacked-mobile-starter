import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'mobile_signup_view.form.dart';
import 'mobile_signup_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(
      name: 'phone',
    ),
  ],
)
class MobileSignupView extends StackedView<MobileSignupViewModel>
    with $MobileSignupView {
  const MobileSignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MobileSignupViewModel viewModel,
    Widget? child,
  ) {
    final queryData = MediaQuery.of(context);
    final bottomSafeArea = queryData.padding.bottom;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(
                top: 40,
                left: 24,
                right: 24,
              ),
              children: [
                Text(
                  AppStrings.ksMobileSignupTitle,
                  style: AppTextStyles.ktsH2.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  AppStrings.ksMobileSignupSubtitle,
                  style: AppTextStyles.ktsSubtitle.copyWith(
                    color: context.palette.subTextColor,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                IntlPhoneField(
                  hint: AppStrings.ksPhoneInputHint,
                  controller: phoneController,
                  focusNode: phoneFocusNode,
                  onChange: (value) {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 10 + bottomSafeArea,
            ),
            child: PrimaryButton(
              text: AppStrings.ksContinue,
              onTap: viewModel.actionContinue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void onViewModelReady(MobileSignupViewModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(MobileSignupViewModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  MobileSignupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MobileSignupViewModel();
}
