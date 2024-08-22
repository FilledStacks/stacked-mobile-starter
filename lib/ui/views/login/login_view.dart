import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';
import 'package:stacked_mobile_starter/utilities/utilities.dart';

import 'login_view.form.dart';
import 'login_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(
      name: 'email',
      validator: Validator.validateEmail,
    ),
    FormTextField(
      name: 'password',
      validator: Validator.validatePassword,
    ),
  ],
)
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
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
              style: AppTextStyles.ktsH2.copyWith(
                color: context.palette.textColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              AppStrings.ksLoginSubtitle,
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
              onFieldSubmitted: (value) {
                if (StringUtil.isNotEmpty(value)) {
                  passwordFocusNode.requestFocus();
                }
              },
            ),
            const SizedBox(
              height: 24,
            ),
            InputField(
              hint: AppStrings.ksPassword,
              controller: passwordController,
              focusNode: passwordFocusNode,
              obscureText: viewModel.obscureText,
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: viewModel.actionMoveToForgotPassword,
                child: Text(
                  AppStrings.ksForgotPassword,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            PrimaryButton(
              text: AppStrings.ksLogin,
              onTap: viewModel.actionLogin,
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
  void onViewModelReady(LoginViewModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(LoginViewModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
