import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/app/app.locator.dart';
import 'package:stacked_mobile_starter/app/app.logger.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/services/json_resource_service.dart';

class CountriesSheetModel extends FutureViewModel<List<CountryInfoDataModel>?> {
  final _jsonResourceService = locator<JsonResourceService>();
  final _logger = getLogger('CountriesSheetModel');

  List<CountryInfoDataModel> _memoryList = [];

  Future<List<CountryInfoDataModel>?> _getCountries() async {
    try {
      final countries = await _jsonResourceService.loadCountries();
      if (countries != null) {
        _memoryList = countries;
      }
      return countries;
    } catch (e) {
      return null;
    }
  }

  void searchCountry(String? value) {
    if (value == null) return;

    _logger.i('search value: $value');

    final List<CountryInfoDataModel> searchList = List.from(_memoryList);

    if (value.isEmpty) {
      data = searchList;
    } else {
      data = searchList
          .where((country) =>
              country.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    rebuildUi();
  }

  @override
  Future<List<CountryInfoDataModel>?> futureToRun() async {
    return await _getCountries();
  }
}
