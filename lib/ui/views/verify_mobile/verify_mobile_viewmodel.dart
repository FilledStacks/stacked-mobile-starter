import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.logger.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class VerifyMobileViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _logger = getLogger('VerifyMobileViewModel');

  void actionSubmit(String value) {
    _logger.i('OTP: $value');
    _navigationService.clearStackAndShow(Routes.wrapperView);
  }

  void actionResendOtp() {}
}
