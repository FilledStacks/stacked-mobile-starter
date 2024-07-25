import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'login_email_view.form.dart';
import 'login_email_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(
      name: 'email',
    ),
  ],
)
class LoginEmailView extends StackedView<LoginEmailViewModel>
    with $LoginEmailView {
  const LoginEmailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginEmailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(
            top: 80,
            left: 24,
            right: 24,
          ),
          children: [
            Text(
              AppStrings.ksLogin,
              textAlign: TextAlign.center,
              style: AppTextStyles.ktsH2.copyWith(
                color: context.palette.textColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              AppStrings.ksLoginSubtitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.ktsSubtitle.copyWith(
                color: context.palette.subTextColor,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InputField(
              hint: AppStrings.ksEmail,
              controller: emailController,
              focusNode: emailFocusNode,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 70,
                right: 70,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: AppStrings.ksTermsFirstPart,
                  style: AppTextStyles.ktsDetail.copyWith(
                    color: context.palette.detailColor,
                  ),
                  children: [
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: AppStrings.ksTermsOfService,
                      style: AppTextStyles.ktsDetail.copyWith(
                        color: context.palette.detailColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: AppStrings.ksAnd,
                      style: AppTextStyles.ktsDetail.copyWith(
                        color: context.palette.detailColor,
                      ),
                    ),
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: AppStrings.ksPrivacyPolicy,
                      style: AppTextStyles.ktsDetail.copyWith(
                        color: context.palette.detailColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            PrimaryButton(
              text: AppStrings.ksContinueWithEmail,
              onTap: viewModel.actionLoginWithEmail,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const Expanded(
                  child: Divider(),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  AppStrings.ksOrContinueWith,
                  style: AppTextStyles.ktsDetail.copyWith(
                    color: AppColors.kcSlate500,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Expanded(
                  child: Divider(),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            PrimaryOulineButton.icon(
              text: AppStrings.ksContinueWithApple,
              icon: Image.asset(
                'assets/png/apple.png',
                height: 24,
                width: 24,
                fit: BoxFit.scaleDown,
              ),
              onTap: viewModel.actionLoginWithApple,
            ),
            const SizedBox(
              height: 16,
            ),
            PrimaryOulineButton.icon(
              text: AppStrings.ksContinueWithGoogle,
              icon: Image.asset(
                'assets/png/google.png',
                height: 24,
                width: 24,
                fit: BoxFit.scaleDown,
              ),
              onTap: viewModel.actionLoginWithGoogle,
            ),
            const SizedBox(
              height: 16,
            ),
            PrimaryOulineButton.icon(
              text: AppStrings.ksContinueWithFacebook,
              icon: Image.asset(
                'assets/png/fb_blue.png',
                height: 24,
                width: 24,
                fit: BoxFit.scaleDown,
              ),
              onTap: viewModel.actionLoginWithFacebook,
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: AppStrings.ksDontHaveAnAccount,
                style: AppTextStyles.ktsDetail.copyWith(
                  color: context.palette.textColor,
                ),
                children: [
                  const TextSpan(
                    text: ' ',
                  ),
                  TextSpan(
                    text: AppStrings.ksCreateAccount,
                    recognizer: TapGestureRecognizer()
                      ..onTap = viewModel.actionMoveToMobileSignup,
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
      ),
    );
  }

  @override
  void onViewModelReady(LoginEmailViewModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(LoginEmailViewModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  LoginEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginEmailViewModel();
}
