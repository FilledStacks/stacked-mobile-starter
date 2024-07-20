import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class MobileSignupViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void actionContinue() {
    _navigationService.navigateToVerifyMobileView();
  }
}
