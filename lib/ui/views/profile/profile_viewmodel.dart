import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.logger.dart';
import 'package:stacked_mobile_starter/app/app.router.dart';
import 'package:stacked_mobile_starter/services/app_meta_data_service.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _appMetaDataService = locator<AppMetaDataService>();
  final _logger = getLogger('ProfileViewModel');

  String? versionNumber;

  Future<void> loadState() async {
    try {
      final version = await _appMetaDataService.fetchInfo();
      versionNumber = version;
      rebuildUi();
    } catch (e) {
      _logger.e('error fetching info', e);
    }
  }

  void actionRateApp() {}

  void actionReportProblem() {}

  void actionHelpCenter() {}

  void actionMoveToAccountSettings() {}

  void actionMoveToNotificationSettings() {}

  void actionMoveToPayments() {}

  void actionMoveToTransactionHistory() {}

  void actionMoveToBookingHistory() {}

  void actionLogout() {
    _navigationService.clearStackAndShow(Routes.loginView);
  }

  void actionMoveToEditProfile() {}

  void actionShowImageSourceBottomSheet() {}
}
