import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/enums/image_source.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/widgets.dart';
import 'package:stacked_services/stacked_services.dart';

import 'image_source_sheet_model.dart';

class ImageSourceSheet extends StackedView<ImageSourceSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const ImageSourceSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ImageSourceSheetModel viewModel,
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
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppStrings.ksUploadPhoto,
            style: AppTextStyles.ktsH4.copyWith(
              color: context.palette.textColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ProfileTile(
            title: AppStrings.ksUseCamera,
            icon: Icons.camera_alt_outlined,
            onTap: () {
              completer!(SheetResponse(data: ImageSource.camera));
            },
          ),
          ProfileTile(
            title: AppStrings.ksUploadPhotoFromFiles,
            icon: Icons.upload_file_outlined,
            onTap: () {
              completer!(SheetResponse(data: ImageSource.gallery));
            },
          ),
        ],
      ),
    );
  }

  @override
  ImageSourceSheetModel viewModelBuilder(BuildContext context) =>
      ImageSourceSheetModel();
}
