import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/data_models/data_models.dart';
import 'package:stacked_mobile_starter/ui/bottom_sheets/filter/filter_sheet.form.dart';

class FilterSheetModel extends FormViewModel {
  bool manualTransmission = false;
  bool automaticTransmission = false;
  bool fullTank = false;
  bool halfTank = false;

  double get minRange => 0.00;
  double get maxRange => 1000.00;

  RangeValuesDataModel _currentRange = RangeValuesDataModel(
    start: 100,
    end: 500,
  );

  RangeValuesDataModel get currentRange => _currentRange;

  void initRange() {
    minAmountValue = currentRange.start.toStringAsFixed(2);
    maxAmountValue = currentRange.end.toStringAsFixed(2);
  }

  void actionUpdateRange(double start, double end) {
    _currentRange = RangeValuesDataModel(
      start: start,
      end: end,
    );
    minAmountValue = start.toStringAsFixed(2);
    maxAmountValue = end.toStringAsFixed(2);
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
