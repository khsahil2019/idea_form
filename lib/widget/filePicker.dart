import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class FilePickerService {
  static Future<List<File>?> pickFile({bool isMultiple = false}) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: isMultiple,
      allowedExtensions: ['pdf', "jpg", "jpeg", "png", "docx", "doc"],
    );
    if (result != null) {
      if (isMultiple) {
        return result.files.map((e) => File(e.path!)).toList();
      }
      return [File(result.files.single.path!)];
    } else {
      return null;
    }
  }

  static Future<List<Map<String, dynamic>>?> pickFileWeb(
      {bool isMultiple = false}) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: isMultiple,
      allowedExtensions: ['pdf', "jpg", "jpeg", "png", "docx", "doc"],
    );
    if (result != null) {
      if (isMultiple) {
        return result.files
            .map((e) =>
                <String, dynamic>{"fileName": e.name, "fileByte": e.bytes!})
            .toList();
      } else {
        log("result.files.single.name: ${result.files.single.name}");
        return [
          <String, dynamic>{
            "fileName": result.files.single.name,
            "fileByte": result.files.single.bytes!
          }
        ];
      }
    } else {
      return null;
    }
  }
}
