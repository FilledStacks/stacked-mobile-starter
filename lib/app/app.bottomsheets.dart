// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedBottomsheetGenerator
// **************************************************************************

import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';
import '../ui/bottom_sheets/countries/countries_sheet.dart';
import '../ui/bottom_sheets/edit_account_name/edit_account_name_sheet.dart';
import '../ui/bottom_sheets/edit_email/edit_email_sheet.dart';
import '../ui/bottom_sheets/edit_password/edit_password_sheet.dart';
import '../ui/bottom_sheets/filter/filter_sheet.dart';
import '../ui/bottom_sheets/image_source/image_source_sheet.dart';

enum BottomSheetType {
  countries,
  imageSource,
  filter,
  editAccountName,
  editEmail,
  editPassword,
}

void setupBottomSheetUi() {
  final bottomsheetService = locator<BottomSheetService>();

  final Map<BottomSheetType, SheetBuilder> builders = {
    BottomSheetType.countries: (context, request, completer) =>
        CountriesSheet(request: request, completer: completer),
    BottomSheetType.imageSource: (context, request, completer) =>
        ImageSourceSheet(request: request, completer: completer),
    BottomSheetType.filter: (context, request, completer) =>
        FilterSheet(request: request, completer: completer),
    BottomSheetType.editAccountName: (context, request, completer) =>
        EditAccountNameSheet(request: request, completer: completer),
    BottomSheetType.editEmail: (context, request, completer) =>
        EditEmailSheet(request: request, completer: completer),
    BottomSheetType.editPassword: (context, request, completer) =>
        EditPasswordSheet(request: request, completer: completer),
  };

  bottomsheetService.setCustomSheetBuilders(builders);
}
