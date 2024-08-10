import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';
import 'package:stacked_services/stacked_services.dart';

import 'edit_email_sheet.form.dart';
import 'edit_email_sheet_model.dart';

@FormView(
  fields: [
    FormTextField(name: 'email'),
  ],
)
class EditEmailSheet extends StackedView<EditEmailSheetModel>
    with $EditEmailSheet {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const EditEmailSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditEmailSheetModel viewModel,
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
                  AppStrings.ksEmail,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                InputField(
                  controller: emailController,
                  focusNode: emailFocusNode,
                  keyboardType: TextInputType.emailAddress,
                  hint: AppStrings.ksEmailHint,
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
  void onViewModelReady(EditEmailSheetModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(EditEmailSheetModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  EditEmailSheetModel viewModelBuilder(BuildContext context) =>
      EditEmailSheetModel();
}
