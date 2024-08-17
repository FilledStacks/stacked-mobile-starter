import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

class ListingDetailsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _themeService = locator<ThemeService>();

  bool get isDarkMode => _themeService.isDarkMode;

  bool addTransportationCard = false;
  bool addPortableWifi = false;

  void actionBack() {
    _navigationService.back();
  }

  void actionLike() {}

  void actionReadMore() {}

  void actionMore() {}

  void actionToggleTransportationCard(bool? value) {
    if (value == null) return;
    addTransportationCard = value;
    rebuildUi();
  }

  void actionTogglePortableWifi(bool? value) {
    if (value == null) return;
    addPortableWifi = value;
    rebuildUi();
  }

  List<CarDataModel> carList = [
    const CarDataModel(
      image: 'assets/png/vehicle_one.png',
      model: 'Toyota RAV4 2024',
      transmission: 'T/A Transmission',
      tankGas: 'Full-tank Gas',
      amount: '200.00',
    ),
    const CarDataModel(
      image: 'assets/png/vehicle_two.png',
      model: 'Subaru Crosstrek 2014',
      transmission: 'A/T Transmission',
      tankGas: 'Half-tank Gas',
      amount: '150.00',
    ),
    const CarDataModel(
      image: 'assets/png/vehicle_three.png',
      model: 'Toyota RAV4 2024',
      transmission: 'T/A Transmission',
      tankGas: 'Half-tank Gas',
      amount: '150.00',
    ),
    const CarDataModel(
      image: 'assets/png/vehicle_four.png',
      model: 'Subaru Crosstrek 2014',
      transmission: 'A/T Transmission',
      tankGas: 'Full-tank Gas',
      amount: '200.00',
    ),
  ];

  void actionSeeAllCarRentals() {}

  void actionDone() {}

  void actionSeeAllReviews() {}
}
