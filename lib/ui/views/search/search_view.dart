import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
              ),
              child: InputField(
                hint: S.of(context).ksSearch,
                onChanged: viewModel.searchCar,
              ),
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  if (viewModel.carList.isEmpty) {
                    return EmptyState(
                      message: S.of(context).ksCarNotFoundText,
                    );
                  }

                  return ListView.separated(
                    padding: const EdgeInsets.only(
                      top: 24,
                      left: 16,
                      right: 16,
                    ),
                    itemBuilder: (context, index) {
                      final cardData = viewModel.carList.elementAt(index);
                      return CarCard(
                        carData: cardData,
                        onTap: () {
                          viewModel.actionMoveToCarDetails(cardData: cardData);
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 40,
                      );
                    },
                    itemCount: viewModel.carList.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
