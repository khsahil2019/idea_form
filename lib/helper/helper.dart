import 'dart:io';
import 'dart:math';
import 'dart:developer' as dev;

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

String getRandomString(int length) {
  const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();

  return String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
}

bool isValidEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.([a-z]{2,}|d+)$")
      .hasMatch(email);
}

bool isValidPassword(String pass) {
  return RegExp(
          r'^[a-zA-Z0-9]+(?:[._][a-zA-Z0-9]+)*@[a-zA-Z0-9]+\.[a-zA-Z]{8,}$')
      // return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')

      .hasMatch(pass);
}

bool isValidUrl(String url) {
  return RegExp(
          r'^((http|https):\/\/)?[a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)$')
      .hasMatch(url);
}

String? getFileSize(int bytes, int decimals) {
  // var file = File(filepath);
  // int bytes = await file.length();
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
}

// String timestampToDateTime(Timestamp timestamp) {
//   var date = timestamp.toDate().toLocal();
//   var formattedDate =
//       "${date.day}-${date.month}-${date.year} ${date.hour}:${date.minute}";
//   return formattedDate;
// }

bool isLink(String input) {
  final matcher = RegExp(
      r"(http(s)?:\/\/.)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)");
  return matcher.hasMatch(input);
}

String getFileNameFromUrl(String url) {
  Uri uri = Uri.parse(url);
  String filePath = uri.path;
  String fileName = filePath.split('/').last;
  // if (url != null) {
  //   Uri uri = Uri.parse(url);
  dev.log("url" + uri.toString());
  //   dev.log("url" + uri.pathSegments.toString());
  //   fileName = uri.pathSegments.last;
  // }
  return fileName;
}
