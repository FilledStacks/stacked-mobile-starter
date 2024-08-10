import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';
import 'package:stacked_services/stacked_services.dart';

import 'edit_account_name_sheet.form.dart';
import 'edit_account_name_sheet_model.dart';

@FormView(
  fields: [
    FormTextField(name: 'first_name'),
    FormTextField(name: 'last_name'),
  ],
)
class EditAccountNameSheet extends StackedView<EditAccountNameSheetModel>
    with $EditAccountNameSheet {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const EditAccountNameSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditAccountNameSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
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
            AppStrings.ksEditAccountName,
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
                  AppStrings.ksFirstNameLabel,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                InputField(
                  controller: firstNameController,
                  focusNode: firstNameFocusNode,
                  keyboardType: TextInputType.text,
                  hint: AppStrings.ksFirstNameHint,
                  onFieldSubmitted: (value) {
                    if (value.isNotEmpty) {
                      lastNameFocusNode.requestFocus();
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  AppStrings.ksLastNameLabel,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: AppColors.kcSlate400,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                InputField(
                  controller: lastNameController,
                  focusNode: lastNameFocusNode,
                  keyboardType: TextInputType.text,
                  hint: AppStrings.ksLastNameHint,
                ),
              ],
            ),
          ),
          PrimaryButton(
            text: AppStrings.ksDone,
            onTap: () {
              completer!(SheetResponse());
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }

  @override
  void onViewModelReady(EditAccountNameSheetModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(EditAccountNameSheetModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  EditAccountNameSheetModel viewModelBuilder(BuildContext context) =>
      EditAccountNameSheetModel();
}
