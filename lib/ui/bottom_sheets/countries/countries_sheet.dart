import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
import 'package:stacked_mobile_starter/ui/common/app_text_styles.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';
import 'package:stacked_services/stacked_services.dart';

import 'countries_sheet_model.dart';

class CountriesSheet extends StackedView<CountriesSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const CountriesSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CountriesSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: 700,
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
          Text(
            S.of(context).ksCountryTitle,
            style: AppTextStyles.ktsH4.copyWith(
              color: context.palette.textColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          InputField(
            hint: S.of(context).ksSearch,
            onChanged: viewModel.searchCountry,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Builder(
              builder: (context) {
                if (viewModel.data == null || viewModel.data!.isEmpty) {
                  return Center(
                    child: EmptyState(
                      message: S.of(context).ksCountryNotFoundText,
                    ),
                  );
                }

                return ListView.separated(
                  itemBuilder: (context, index) {
                    final info = viewModel.data?.elementAt(index);

                    return ListTile(
                      leading: Text(
                        info?.flag ?? '--',
                        style: AppTextStyles.ktsLead,
                      ),
                      title: Text(
                        info?.name ?? '--',
                        style: AppTextStyles.ktsSmall.copyWith(
                          color: context.palette.textColor,
                        ),
                      ),
                      trailing: Text(
                        info?.dialCode ?? '--',
                        style: AppTextStyles.ktsDetail.copyWith(
                          color: context.palette.textColor,
                        ),
                      ),
                      onTap: () {
                        completer!(SheetResponse(
                          confirmed: true,
                          data: info,
                        ));
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 2,
                    );
                  },
                  itemCount: viewModel.data?.length ?? 0,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  CountriesSheetModel viewModelBuilder(BuildContext context) =>
      CountriesSheetModel();
}
