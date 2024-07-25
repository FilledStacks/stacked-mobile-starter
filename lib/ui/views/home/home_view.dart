import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'home_viewmodel.dart';
import 'widgets/widgets.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.ksHome,
          style: AppTextStyles.ktsH2.copyWith(
            color: context.palette.textColor,
          ),
        ),
        centerTitle: false,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.palette.primaryButtonColor,
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(96),
              child: InkWell(
                borderRadius: BorderRadius.circular(96),
                onTap: viewModel.actionApplyFilter,
                child: Icon(
                  Icons.tune,
                  color: context.palette.primaryButtonTextColor,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 50,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final title = viewModel.filters.elementAt(index);
                        return FilterCard(
                          title: title,
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 12,
                        );
                      },
                      itemCount: viewModel.brandList.length,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.ksFeaturedCars,
                          style: AppTextStyles.ktsH4.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                        TextButton(
                          onPressed: viewModel.actionSeeAllFeaturedCars,
                          child: Text(
                            AppStrings.ksSeeAll,
                            style: AppTextStyles.ktsSmall.copyWith(
                              color: context.palette.textColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 26,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 250,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final carData = viewModel.carList.elementAt(index);
                        return CarCard(
                          carData: carData,
                          width: 288,
                          onTap: () {
                            viewModel.actionMoveToCarDetails(
                              carData: carData,
                            );
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 16,
                        );
                      },
                      itemCount: viewModel.carList.length,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.ksBrowseByBrands,
                          style: AppTextStyles.ktsH4.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                        TextButton(
                          onPressed: viewModel.actionSeeAllBrands,
                          child: Text(
                            AppStrings.ksSeeAll,
                            style: AppTextStyles.ktsSmall.copyWith(
                              color: context.palette.textColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 16,
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 80,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final brandData = viewModel.brandList.elementAt(index);
                        return BrandCard(
                          brandData: brandData,
                          onTap: () {},
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 8,
                        );
                      },
                      itemCount: viewModel.brandList.length,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      AppStrings.ksAllCars,
                      style: AppTextStyles.ktsH4.copyWith(
                        color: context.palette.textColor,
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  sliver: SliverList.separated(
                    itemBuilder: (context, index) {
                      final carData = viewModel.carList.elementAt(index);
                      return CarCard(
                        carData: carData,
                        onTap: () {
                          viewModel.actionMoveToCarDetails(
                            carData: carData,
                          );
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 32,
                      );
                    },
                    itemCount: viewModel.carList.length,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 40,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      AppStrings.ksAllCars,
                      style: AppTextStyles.ktsH4.copyWith(
                        color: context.palette.textColor,
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 24,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  sliver: SliverList.separated(
                    itemBuilder: (context, index) {
                      final carData = viewModel.carList.elementAt(index);
                      return CarTile(
                        carData: carData,
                        onTap: () {
                          viewModel.actionMoveToCarDetails(
                            carData: carData,
                          );
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 24,
                      );
                    },
                    itemCount: viewModel.carList.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
