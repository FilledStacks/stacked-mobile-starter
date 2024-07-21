import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';

import 'widgets/get_index_view.dart';
import 'wrapper_viewmodel.dart';

class WrapperView extends StackedView<WrapperViewModel> {
  const WrapperView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WrapperViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: GetIndexView(
        currentIndex: viewModel.currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: viewModel.currentIndex,
        onTap: viewModel.setIndex,
        items: [
          BottomNavigationBarItem(
            label: S.of(context).ksHome,
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: S.of(context).ksSearch,
            icon: const Icon(Icons.search_outlined),
            activeIcon: const Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: S.of(context).ksProfile,
            icon: const Icon(Icons.person_outline_outlined),
            activeIcon: const Icon(Icons.person_outline_outlined),
          ),
        ],
      ),
    );
  }

  @override
  WrapperViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WrapperViewModel();
}
