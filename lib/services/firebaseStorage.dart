import 'dart:developer';
import 'dart:io';
// import 'dart:html' as html;
// import 'dart:io';
// import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';

import '../helper/helper.dart';
import '../widget/toast.dart';

class FirebaseStorageService {
  static Future<String?> uploadFile(String path, String fileName,
      {File? file, Uint8List? byteData}) async {
    try {
      if (kIsWeb) {
        final ref = FirebaseStorage.instance.ref(path).child(fileName);
        final uploadTask = ref.putData(byteData!);
        final snapshot = await uploadTask.whenComplete(() {
          log("Image uploaded");
        });
        final downloadUrl = await snapshot.ref.getDownloadURL();
        log(downloadUrl);
        return downloadUrl;
      } else {
        return FirebaseStorage.instance
            .ref(path)
            .child(fileName)
            .putFile(file!)
            .then((value) => value.ref.getDownloadURL());
      }
    } catch (e) {
      log(" Catch Error: $e");
      showToastMessage(e.toString());
      return null;
    }
    // try {

    // } catch (e) {
    //   log(" Catch Error: $e");
    //   showToastMessage(e.toString());
    //   return null;
    // }
  }

  static Future<List?> uploadMultiFile(
    String path, {
    List<File>? files,
    List<Map<String, dynamic>>? byteList,
  }) async {
    try {
      if (kIsWeb) {
        var imageUrls = await Future.wait(byteList!.map((byteData) =>
            uploadFile(path, byteData["fileName"] as String,
                byteData: byteData["fileByte"] as Uint8List?)));
        return imageUrls;
      } else {
        var imageUrls = await Future.wait(files!.map(
            (file) => uploadFile(path, file.path.split('/').last, file: file)));
        return imageUrls.where((element) => element != null).toList();
      }
    } catch (e) {
      log(" Catch Error: $e");
      showToastMessage(e.toString());
      return null;
    }
  }

  static Future<bool?> deleteFileByUrl(String url) async {
    try {
      return await FirebaseStorage.instance
          .refFromURL(url)
          .delete()
          .then((value) => true);
    } catch (e) {
      log(" Catch Error: $e");
      showToastMessage(e.toString());
      return null;
    }
  }

  static Future<bool?> deleteMultiFileByUrl(List<String> urls) async {
    try {
      return await Future.wait(urls.map((url) => deleteFileByUrl(url)))
          .then((value) => true);
    } catch (e) {
      log(" Catch Error: $e");
      showToastMessage(e.toString());
      return null;
    }
  }

  // static Future<File?> downloadFile(String url) async {
  //   try {
  //     String name = getFileNameFromUrl(url);
  //     Directory appDocDir = await getTemporaryDirectory();
  //     String appDocPath = appDocDir.path;
  //     String filePath = '$appDocPath/img.jpg';
  //     log(filePath);
  //     final File file = File(filePath);
  //     await FirebaseStorage.instance.refFromURL(url).writeToFile(file);
  //     return file;
  //   } catch (e) {
  //     log(" Catch Error: $e");
  //     showToastMessage(e.toString());
  //     return null;
  //   }
  // }

  // static Future<void> downloadFileWeb(String url,
  //     {bool isNewTab = true}) async {
  //   // html.window.open(url, '_blank');
  //   await launchUrl(
  //     Uri.parse(url),
  //     // webOnlyWindowName: '_blank',
  //     webOnlyWindowName: isNewTab ? '_blank' : '_self',
  //   );
  // }
}
