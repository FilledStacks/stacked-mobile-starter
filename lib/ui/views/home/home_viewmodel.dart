import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';

class HomeViewModel extends BaseViewModel {
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

  List<BrandDataModel> brandList = [
    const BrandDataModel(
      image: 'assets/png/vehicle_one.png',
      name: 'Audi',
    ),
    const BrandDataModel(
      image: 'assets/png/vehicle_two.png',
      name: 'BMV',
    ),
    const BrandDataModel(
      image: 'assets/png/vehicle_three.png',
      name: 'Buick',
    ),
    const BrandDataModel(
      image: 'assets/png/vehicle_four.png',
      name: 'Toyota',
    ),
  ];

  List<String> filters = [
    'All',
    'Featured',
    'Nearby',
    'Available',
  ];

  void actionSeeAllFeaturedCars() {}

  void actionSeeAllBrands() {}

  void actionMoveToCarDetails({
    required CarDataModel carData,
  }) {}

  void actionApplyFilter() {}
}
