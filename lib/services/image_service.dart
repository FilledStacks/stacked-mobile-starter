import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageService {
  final ImagePicker _imagePicker = ImagePicker();

  Future<File?> selectFromCamera() async {
    final XFile? file =
        await _imagePicker.pickImage(source: ImageSource.camera);

    if (file == null) {
      return null;
    }

    return File(file.path);
  }

  Future<File?> selectFromGallery() async {
    final XFile? file =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (file == null) {
      return null;
    }

    return File(file.path);
  }
}
