import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:stacked_mobile_starter/app/app.logger.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';

class JsonResourceService {
  final _logger = getLogger('JsonResourceService');

  Future<List<CountryInfoDataModel>?> loadCountries() async {
    try {
      String jsonString =
          await rootBundle.loadString("assets/json/countries.json");
      final json = jsonDecode(jsonString);
      final CountriesDataModel countriesResponse =
          CountriesDataModel.fromJson(json);
      return countriesResponse.countries;
    } catch (e, s) {
      _logger.e('error trying to fetch countries from local json file', e, s);
      return null;
    }
  }
}
