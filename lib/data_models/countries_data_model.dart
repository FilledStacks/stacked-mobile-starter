import 'country_info_data_model.dart';

class CountriesDataModel {
  List<CountryInfoDataModel>? countries;

  CountriesDataModel({
    this.countries,
  });

  CountriesDataModel.fromJson(Map<String, dynamic> json) {
    if (json['countries'] != null) {
      countries = <CountryInfoDataModel>[];
      json['countries'].forEach((v) {
        countries!.add(CountryInfoDataModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (countries != null) {
      data['countries'] = countries!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
