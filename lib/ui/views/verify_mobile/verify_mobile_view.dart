import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'verify_mobile_view.form.dart';
import 'verify_mobile_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(
      name: 'otp',
    ),
  ],
)
class VerifyMobileView extends StackedView<VerifyMobileViewModel>
    with $VerifyMobileView {
  const VerifyMobileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyMobileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 40,
          left: 24,
          right: 24,
        ),
        children: [
          Text(
            S.of(context).ksVerifyMobileTitle,
            style: AppTextStyles.ktsH2.copyWith(
              color: context.palette.textColor,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            S.of(context).ksVerifyMobileSubtitle,
            style: AppTextStyles.ktsSubtitle.copyWith(
              color: context.palette.subTextColor,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomPinField(
              controller: otpController,
              focusNode: otpFocusNode,
              onChanged: viewModel.actionSubmit,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          RichText(
            text: TextSpan(
              text: S.of(context).ksDontHaveAnAccount,
              style: AppTextStyles.ktsDetail.copyWith(
                color: context.palette.textColor,
              ),
              children: [
                const TextSpan(
                  text: ' ',
                ),
                TextSpan(
                  text: S.of(context).ksResend,
                  recognizer: TapGestureRecognizer()
                    ..onTap = viewModel.actionResendOtp,
                  style: AppTextStyles.ktsDetail.copyWith(
                    color: context.palette.textColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void onViewModelReady(VerifyMobileViewModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(VerifyMobileViewModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  VerifyMobileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyMobileViewModel();
}
