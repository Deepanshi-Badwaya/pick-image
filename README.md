# pick_image

This package allows you to pick an image from the camera or from your gallery using Flutter.

## Features:

-The first step is to give permission to access your device's camera and gallery.
- We can easily click the image and set it to wherever we wish to use it, just as we can do with the gallery.

## Usage:

This package used for picking images from the camera or gallery.
## For Android:
For user permissions, you need to include below permissions in the manifest file
```dart
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-feature android:name="android.hardware.camera" />
    <uses-feature android:name="android.hardware.camera.autofocus" />

    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
```

## Get Started:
A utility class for picking images from the camera or gallery

```dart
ImagePickerComponent()
```
## Import:
```dart
import 'package:pick_image/pick_image.dart';
```

## Example
```dart
// Instantiate the ImagePickerComponent
final Function(String imagePath) onImageSelected;
final pickImage = ImagePickerComponent();

//Example you can use this  as

// Call the pickImageFromCamera method to initiate the clicking image from camera
//bottom sheet for the options of picking the image from camera or from gallery
void _showImagePicker(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //for camera
          listItemForImagePicker(context, Icons.camera, 'Take Photo', () {
            Navigator.pop(context);
            /// Opens the device camera to capture an image.
            ///
            /// - Parameters:
            ///   - context: The build context.
            ///   - onImageSelected: A callback function to handle the selected image path.
            //pick_image functionality for camera to picked the Image from the image picker directory
            ImagePickerComponent.pickImageFromCamera(context, onImageSelected);
          }),
          //for gallery
          listItemForImagePicker(context, Icons.photo, 'Choose from Gallery', () {
            Navigator.pop(context);
            /// Opens the device gallery to select an image.
            ///
            /// - Parameters:
            ///   - context: The build context.
            ///   - onImageSelected: A callback function to handle the selected image path.
            //pick_image functionality for camera picked from the Image picker package directory
            ImagePickerComponent.pickImageFromGallery(context, onImageSelected);
          }),
        ],
      );
    },
  );
}

//pick_image items UI
ListTile listItemForImagePicker(BuildContext context, IconData photo, String name, Function() onTap) {
  return ListTile(
    leading: Icon(photo),
    title: Text(name),
    onTap: onTap,
  );
}
```
As a result, you can use this _showImagePicker() and pass the context to use the functionality for this package

## Dependencies:

For picking the image from the gallery or camera , this package contains the following dependencies in the yaml file, which must be upgraded in the future.

dependencies:

image_picker: ^1.0.5

## Installation:

Add the following to your `pubspec.yaml` file to use this package for google login:

```yaml

dependencies:
  pick_image: ^1.0.0
```

## Additional information

We need to add the functionality to store that image until we change it to another image, 
as this package is only responsible for picking an image from a given medium and displaying it wherever desired.