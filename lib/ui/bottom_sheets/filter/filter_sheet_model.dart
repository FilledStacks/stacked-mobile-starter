import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/ui/bottom_sheets/filter/filter_sheet.form.dart';

class FilterSheetModel extends FormViewModel {
  FilterSheetModel() {
    minValue = currentRange.start.toStringAsFixed(2);
    maxValue = currentRange.end.toStringAsFixed(2);
  }
  bool manualTransmission = false;
  bool automaticTransmission = false;
  bool fullTank = false;
  bool halfTank = false;

  RangeValuesDataModel _currentRange = RangeValuesDataModel(
    start: 0.3,
    end: 0.7,
  );

  RangeValuesDataModel get currentRange => _currentRange;

  void actionUpdateRange(double start, double end) {
    _currentRange = RangeValuesDataModel(
      start: start,
      end: end,
    );
    minValue = start.toStringAsFixed(2);
    maxValue = end.toStringAsFixed(2);
    rebuildUi();
  }

  void actionToggleManualTransmission(bool? value) {
    if (value == null) return;
    manualTransmission = value;
    rebuildUi();
  }

  void actionToggleAutomaticTransmission(bool? value) {
    if (value == null) return;
    automaticTransmission = value;
    rebuildUi();
  }

  void actionToggleFullTank(bool? value) {
    if (value == null) return;
    fullTank = value;
    rebuildUi();
  }

  void actionToggleHalfTank(bool? value) {
    if (value == null) return;
    halfTank = value;
    rebuildUi();
  }
}
