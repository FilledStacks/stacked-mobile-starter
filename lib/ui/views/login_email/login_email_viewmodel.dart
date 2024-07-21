import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginEmailViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void actionLoginWithEmail() {
    _navigationService.clearStackAndShow(Routes.wrapperView);
  }

  void actionLoginWithApple() {}

  void actionLoginWithGoogle() {}

  void actionLoginWithFacebook() {}

  void actionMoveToMobileSignup() {
    _navigationService.navigateToMobileSignupView();
  }
}
