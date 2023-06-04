import 'package:flutter/material.dart';

getUnderlineBorder(var color) {
  return Border(
    bottom: BorderSide(
      color: color,
      width: 0.5,
    ),
  );
}

Widget buildBottomIcon(String icon, {double width = 30, double height = 30}) {
  return Image(
    image: AssetImage("assets/img/" + icon),
    height: height,
    width: width,
  );
}
