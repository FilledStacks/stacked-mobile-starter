class CountryInfoDataModel {
  static const defaultCountry = {
    "name": "Nigeria",
    "flag": "🇳🇬",
    "code": "NG",
    "dial_code": "+234",
  };

  String? name;
  String? flag;
  String? code;
  String? dialCode;

  CountryInfoDataModel({
    this.name,
    this.flag,
    this.code,
    this.dialCode,
  });

  CountryInfoDataModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    flag = json['flag'];
    code = json['code'];
    dialCode = json['dial_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['flag'] = flag;
    data['code'] = code;
    data['dial_code'] = dialCode;
    return data;
  }
}
