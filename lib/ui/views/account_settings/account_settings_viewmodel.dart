import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.bottomsheets.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountSettingsViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  void showAccountNameBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.editAccountName,
      isScrollControlled: true,
    );
  }

  void showEmailBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.editEmail,
      isScrollControlled: true,
    );
  }

  void showPasswordBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.editPassword,
      isScrollControlled: true,
    );
  }
}
