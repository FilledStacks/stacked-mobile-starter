import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void actionLoginWithFacebook() {}

  void actionLoginWithGoogle() {}

  void actionLoginWithApple() {}

  void actionLogin() {}

  void actionMoveToForgotPassword() {}

  void actionMoveToMobileSignup() {
    _navigationService.navigateToMobileSignupView();
  }
}
