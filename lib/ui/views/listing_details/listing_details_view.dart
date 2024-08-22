import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';

import 'listing_details_viewmodel.dart';
import 'widgets/widgets.dart';

class ListingDetailsView extends StackedView<ListingDetailsViewModel> {
  const ListingDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ListingDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.palette.primaryButtonTextColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 291,
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 16,
                      right: 16,
                      bottom: 16,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(6),
                        bottomRight: Radius.circular(6),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/png/list_bg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIconButton(
                              icon: Icons.arrow_back,
                              onTap: viewModel.actionBack,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomIconButton(
                                  icon: Icons.favorite_outline,
                                  onTap: viewModel.actionLike,
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                CustomIconButton(
                                  icon: Icons.more_horiz_outlined,
                                  onTap: viewModel.actionMore,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GlassBox(
                              text: '1 / 12',
                            ),
                            GlassBox(
                              text: 'See All Photos',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Into the Streets of Mexico',
                          style: AppTextStyles.ktsH4.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: context.palette.iconColor,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Mexico City, USA',
                              style: AppTextStyles.ktsSmall.copyWith(
                                color: context.palette.textColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Chip(
                              label: Text(
                                'Most Popular',
                                style: AppTextStyles.ktsSubtitle.copyWith(
                                  color: context.palette.textColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Chip(
                              label: Text(
                                '\$ • Cheap',
                                style: AppTextStyles.ktsSubtitle.copyWith(
                                  color: context.palette.textColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          '3 Days 2 Nights Trip • Lodging Included',
                          style: AppTextStyles.ktsSubtitle.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Takes you on an immersive journey through the vibrant, bustling streets of Mexico, where culture, history, and everyday life collide in a rich tapestry of',
                          style: AppTextStyles.ktsSubtitle.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextButton(
                          onPressed: viewModel.actionReadMore,
                          child: Text(
                            AppStrings.ksReadMore,
                            style: AppTextStyles.ktsSubleSemiBold.copyWith(
                              color: context.palette.textColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 8,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      AppStrings.ksWhatToExpect,
                      style: AppTextStyles.ktsH4.copyWith(
                        color: context.palette.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: ExpectCard(
                      svgDarkPath: 'assets/svg/sunlight_dark.svg',
                      svgLightPath: 'assets/svg/sunlight_light.svg',
                      title: 'Get Sunlight Exposure',
                      subtitle:
                          'Get your sunblocks ready as you will be walking with 40 degree temperature outside.',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: ExpectCard(
                      svgDarkPath: 'assets/svg/car_dark.svg',
                      svgLightPath: 'assets/svg/car_light.svg',
                      title: 'Public Transportation',
                      subtitle:
                          'No Uber, just public transportation. Be ready to get in contact with lots of people.',
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: ExpectCard(
                      svgDarkPath: 'assets/svg/wifi_off_dark.svg',
                      svgLightPath: 'assets/svg/wifi_off_light.svg',
                      title: 'Weak Wifi Signals',
                      subtitle:
                          'There are some places with strong signal, but you’ll be off-grid most of the time.',
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Divider(
                    thickness: 8,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      AppStrings.ksYouMightWhatToAdd,
                      style: AppTextStyles.ktsH4.copyWith(
                        color: context.palette.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: AddOnCard(
                      title: 'Transportation Card',
                      subtitle: 'Pay public transportations using card',
                      value: viewModel.addTransportationCard,
                      onChanged: viewModel.actionToggleTransportationCard,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: AddOnCard(
                      title: 'Portable Wi-fi',
                      subtitle: 'PGet connected most of the time',
                      value: viewModel.addPortableWifi,
                      onChanged: viewModel.actionTogglePortableWifi,
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Divider(
                    thickness: 8,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.ksRentACar,
                          style: AppTextStyles.ktsH4.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                        TextButton(
                          onPressed: viewModel.actionSeeAllCarRentals,
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
                  const SizedBox(
                    height: 26,
                  ),
                  SizedBox(
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
                  const SizedBox(
                    height: 22,
                  ),
                  const Divider(
                    thickness: 8,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_outline_outlined,
                          size: 24,
                          color: context.palette.iconColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '4.8',
                          style: AppTextStyles.ktsH4.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: context.palette.iconColor,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          '56 Reviews',
                          style: AppTextStyles.ktsH4.copyWith(
                            color: context.palette.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const ReviewsCard();
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 12,
                        );
                      },
                      itemCount: 4,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                    ),
                    child: PrimaryButton(
                      text: AppStrings.ksSeeAllReviews,
                      onTap: viewModel.actionSeeAllReviews,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: context.palette.primaryButtonTextColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        AppStrings.ksPrice,
                        style: AppTextStyles.ktsDetail.copyWith(
                          color: context.palette.onboardingSubtitlesColor,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: '\$',
                          style: AppTextStyles.ktsH4.copyWith(
                            color: context.palette.textColor,
                          ),
                          children: [
                            TextSpan(
                              text: '240.00',
                              style: AppTextStyles.ktsH4.copyWith(
                                color: context.palette.textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: PrimaryButton(
                      text: AppStrings.ksDone,
                      onTap: viewModel.actionDone,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  ListingDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ListingDetailsViewModel();
}
