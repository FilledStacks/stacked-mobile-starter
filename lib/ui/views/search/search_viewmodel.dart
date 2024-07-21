import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.logger.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';

class SearchViewModel extends BaseViewModel {
  final _logger = getLogger('SearchViewModel');
  late List<CarDataModel> _memoryList = [];

  SearchViewModel() {
    _memoryList = carList;
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

  void searchCar(String? value) {
    if (value == null) return;

    _logger.i('search value: $value');

    final List<CarDataModel> searchList = List.from(_memoryList);

    if (value.isEmpty) {
      carList = searchList;
    } else {
      carList = searchList
          .where(
              (car) => car.model!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    rebuildUi();
  }

  void actionMoveToCarDetails({
    required CarDataModel cardData,
  }) {}
}
