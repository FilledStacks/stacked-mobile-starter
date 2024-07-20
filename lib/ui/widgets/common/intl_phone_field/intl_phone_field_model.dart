import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.bottomsheets.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_services/stacked_services.dart';

class IntlPhoneFieldModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();

  CountryInfoDataModel? _selectedCountry;
  CountryInfoDataModel? get selectedCountry => _selectedCountry;

  void setInitialCountry() {
    var data = CountryInfoDataModel.defaultCountry;
    _selectedCountry = CountryInfoDataModel.fromJson(data);
  }

  void showBottomSheet() async {
    final sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.countries,
      isScrollControlled: true,
    );

    if (sheetResponse?.confirmed == true) {
      _selectedCountry = sheetResponse?.data;
      rebuildUi();
    }
  }
}
