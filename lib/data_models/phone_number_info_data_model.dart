class PhoneNumberInfoDataModel {
  String countryISOCode;
  String countryCode;
  String number;

  PhoneNumberInfoDataModel({
    required this.countryISOCode,
    required this.countryCode,
    required this.number,
  });

  String get completeNumber {
    return countryCode + number;
  }
}
