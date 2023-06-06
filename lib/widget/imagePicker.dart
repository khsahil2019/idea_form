import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  static Future<File?> pickImage(ImageSource source,
      [int? imageQuality]) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: source, imageQuality: imageQuality ?? 50);
    if (pickedFile != null) {
      return File(pickedFile.path);
    } else {
      return null;
    }
  }

  static Future<Map<String, dynamic>?> pickImageWeb({int? imageQuality}) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource.gallery, imageQuality: imageQuality ?? 50);
    if (pickedFile != null) {
      return {
        "fileName": pickedFile.name,
        "byteData": await pickedFile.readAsBytes()
      };
    } else {
      return null;
    }
  }

  static Future<File?> pickVideo(ImageSource source) async {
    try {
      if (source == ImageSource.gallery) {
        FilePickerResult? result =
            await FilePicker.platform.pickFiles(type: FileType.video);

        if (result != null) {
          log(result.files.single.path!);
          File file = File(result.files.single.path!);
          return file;
        } else {
          // User canceled the picker
          return null;
        }
      } else {
        final picker = ImagePicker();
        final pickedFile = await picker.pickVideo(source: ImageSource.camera);
        if (pickedFile != null) {
          log(pickedFile.path);
          log(pickedFile.path.split('/').last);

          return File(pickedFile.path);
        } else {
          return null;
        }
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<File?> pickImageUI(Function onTap, [int? imageQuality]) async {
    late File? image;
    await Get.bottomSheet(
      Container(
        color: Colors.white,
        child: SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Photo Library'),
                  onTap: () async {
                    Get.back();
                    image = await pickImage(ImageSource.gallery, imageQuality);
                    onTap(image);
                  }),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () async {
                  Get.back();
                  image = await pickImage(ImageSource.camera, imageQuality);
                  onTap(image);
                },
              ),
            ],
          ),
        ),
      ),
    );
    // return image;
  }

  static Future<File?> pickVideoUI(Function onTap) async {
    late File? video;
    await Get.bottomSheet(
      Container(
        color: Colors.white,
        child: SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Photo Library'),
                  onTap: () async {
                    Get.back();
                    video = await pickVideo(ImageSource.gallery);
                    onTap(video);
                  }),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () async {
                  Get.back();
                  video = await pickVideo(ImageSource.camera);
                  onTap(video);
                },
              ),
            ],
          ),
        ),
      ),
    );
    // return video;
  }
}
