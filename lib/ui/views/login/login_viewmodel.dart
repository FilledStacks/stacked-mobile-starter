import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  bool obscureText = true;

  void actionLoginWithFacebook() {}

  void actionLoginWithGoogle() {}

  void actionLoginWithApple() {}

  void actionLogin() {
    _navigationService.clearStackAndShow(Routes.wrapperView);
  }

  void actionMoveToForgotPassword() {}

  void actionMoveToMobileSignup() {
    _navigationService.navigateToMobileSignupView();
  }
}
