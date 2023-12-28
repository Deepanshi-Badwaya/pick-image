library pick_image;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// A utility class for picking images from the camera or gallery.
class ImagePickerComponent {
  /// Opens the device camera to capture an image.
  ///
  /// - Parameters:
  ///   - context: The build context.
  ///   - onImageSelected: A callback function to handle the selected image path.
  static Future<void> pickImageFromCamera(
      BuildContext context,
      Function(String) onImageSelected,
      ) async {
    // Use the ImagePicker plugin to capture an image from the camera.
    final image = await ImagePicker().pickImage(source: ImageSource.camera);

    // If an image is successfully picked, invoke the callback with the image path.
    if (image != null) {
      onImageSelected(image.path);
    }
  }

  /// Opens the device gallery to select an image.
  ///
  /// - Parameters:
  ///   - context: The build context.
  ///   - onImageSelected: A callback function to handle the selected image path.
  static Future<void> pickImageFromGallery(
      BuildContext context,
      Function(String) onImageSelected,
      ) async {
    // Use the ImagePicker plugin to pick an image from the device gallery.
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    // If an image is successfully picked, invoke the callback with the image path.
    if (image != null) {
      onImageSelected(image.path);
    }
  }
}
