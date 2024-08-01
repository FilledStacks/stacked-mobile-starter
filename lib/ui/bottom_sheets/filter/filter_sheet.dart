import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';
import 'package:stacked_services/stacked_services.dart';

import 'filter_sheet.form.dart';
import 'filter_sheet_model.dart';
import 'widgets/widgets.dart';

@FormView(
  fields: [
    FormTextField(name: 'min'),
    FormTextField(name: 'max'),
  ],
)
class FilterSheet extends StackedView<FilterSheetModel> with $FilterSheet {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const FilterSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FilterSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: 774,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: context.palette.primaryButtonTextColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              completer!(SheetResponse());
            },
            icon: Icon(
              Icons.close,
              color: context.palette.iconColor,
              size: 25,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            AppStrings.ksFilter,
            style: AppTextStyles.ktsH4.copyWith(
              color: context.palette.textColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              children: [
                Text(
                  AppStrings.ksTransmission,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                FilterCheckBoxTile(
                  title: AppStrings.ksManualTransmission,
                  value: viewModel.manualTransmission,
                  onChanged: viewModel.actionToggleManualTransmission,
                ),
                FilterCheckBoxTile(
                  title: AppStrings.ksAutomaticTransmission,
                  value: viewModel.automaticTransmission,
                  onChanged: viewModel.actionToggleAutomaticTransmission,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  AppStrings.ksGasoline,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                FilterCheckBoxTile(
                  title: AppStrings.ksFullTank,
                  value: viewModel.fullTank,
                  onChanged: viewModel.actionToggleFullTank,
                ),
                FilterCheckBoxTile(
                  title: AppStrings.ksHalfTank,
                  value: viewModel.halfTank,
                  onChanged: viewModel.actionToggleHalfTank,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  AppStrings.ksPrice,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RangeSlider(
                  values: RangeValues(
                    viewModel.currentRange.start,
                    viewModel.currentRange.end,
                  ),
                  onChanged: (value) {
                    viewModel.actionUpdateRange(value.start, value.end);
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          RangeInput(
                            controller: minController,
                            focusNode: minFocusNode,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          RangeInput(
                            controller: maxController,
                            focusNode: maxFocusNode,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: PrimaryButton(
              text: AppStrings.ksApplyFilter,
              onTap: () {
                completer!(SheetResponse());
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void onViewModelReady(FilterSheetModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(FilterSheetModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  FilterSheetModel viewModelBuilder(BuildContext context) => FilterSheetModel();
}
