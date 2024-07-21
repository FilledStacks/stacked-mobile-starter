import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

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
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline_outlined),
            activeIcon: Icon(Icons.person_outline_outlined),
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
