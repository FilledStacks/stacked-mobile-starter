import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';
import 'package:stacked_services/stacked_services.dart';

import 'edit_password_sheet.form.dart';
import 'edit_password_sheet_model.dart';

@FormView(
  fields: [
    FormTextField(name: 'password'),
  ],
)
class EditPasswordSheet extends StackedView<EditPasswordSheetModel>
    with $EditPasswordSheet {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const EditPasswordSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditPasswordSheetModel viewModel,
    Widget? child,
  ) {
    var queryData = MediaQuery.of(context);
    var bottomSafeArea = queryData.padding.bottom;
    return Container(
      height: 400,
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
            AppStrings.ksEditPassword,
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
                  AppStrings.ksPassword,
                  style: AppTextStyles.ktsSmall.copyWith(
                    color: context.palette.textColor,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                InputField(
                  controller: passwordController,
                  focusNode: passwordFocusNode,
                  keyboardType: TextInputType.visiblePassword,
                  hint: AppStrings.ksPasswordHint,
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
          SizedBox(
            height: (24 + bottomSafeArea),
          ),
        ],
      ),
    );
  }

  @override
  void onViewModelReady(EditPasswordSheetModel viewModel) {
    syncFormWithViewModel(viewModel);
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(EditPasswordSheetModel viewModel) {
    disposeForm();
    super.onDispose(viewModel);
  }

  @override
  EditPasswordSheetModel viewModelBuilder(BuildContext context) =>
      EditPasswordSheetModel();
}
