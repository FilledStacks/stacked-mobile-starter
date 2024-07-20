import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.logger.dart';

class VerifyMobileViewModel extends FormViewModel {
  final _logger = getLogger('VerifyMobileViewModel');

  void actionSubmit(String value) {
    _logger.i('OTP: $value');
  }

  void actionResendOtp() {}
}
