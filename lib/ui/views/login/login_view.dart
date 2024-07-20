import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
import 'package:stacked_mobile_starter/ui/common/app_colors.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'login_view.form.dart';
import 'login_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(
      name: 'email',
    ),
    FormTextField(
      name: 'password',
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
              S.of(context).ksLogin,
              style: AppTextStyles.ktsH2.copyWith(
                color: context.palette.textColor,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).ksLoginSubtitle,
              style: AppTextStyles.ktsSubtitle.copyWith(
                color: context.palette.subTextColor,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InputField(
              hint: S.of(context).ksEmail,
              controller: emailController,
              focusNode: emailFocusNode,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 24,
            ),
            InputField(
              hint: S.of(context).ksPassword,
              controller: passwordController,
              focusNode: passwordFocusNode,
              obscureText: true,
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
                  S.of(context).ksForgotPassword,
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
              text: S.of(context).ksLogin,
              onTap: viewModel.actionLogin,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: AppColors.kcSlate300,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  S.of(context).ksOrContinueWith,
                  style: AppTextStyles.ktsDetail.copyWith(
                    color: AppColors.kcSlate500,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Divider(
                    color: AppColors.kcSlate300,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            PrimaryOulineButton.icon(
              text: S.of(context).ksContinueWithApple,
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
              text: S.of(context).ksContinueWithGoogle,
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
              text: S.of(context).ksContinueWithFacebook,
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
                text: S.of(context).ksDontHaveAnAccount,
                style: AppTextStyles.ktsDetail.copyWith(
                  color: context.palette.textColor,
                ),
                children: [
                  const TextSpan(
                    text: ' ',
                  ),
                  TextSpan(
                    text: S.of(context).ksCreateAccount,
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
