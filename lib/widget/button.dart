import 'package:flutter/material.dart';

import '../constant/ui_constant.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  FontWeight? fontWeight;
  BorderRadius? borderRadius;
  var bgColor;
  var textColor;
  var borderColor;

  final double? width;
  final Function() onTap;
  final EdgeInsetsGeometry? margin;
  ButtonWidget(
      {Key? key,
      required this.text,
      required this.onTap,
      this.bgColor,
      this.fontWeight,
      this.borderRadius,
      this.margin,
      this.textColor,
      this.borderColor,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: width,
              alignment: Alignment.center,
              margin: margin ?? EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                  border: borderColor != null
                      ? Border.all(color: borderColor)
                      : null,
                  color: bgColor ?? AppColors.teal,
                  borderRadius: borderRadius ?? BorderRadius.circular(40)),
              child: Text(
                text,
                style: AppTextStyle.text.copyWith(
                    color: textColor ?? Colors.white,
                    fontSize: 16,
                    fontWeight: fontWeight ?? FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OutLinedButtonWidget extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final Color? textColor;
  final double? width;
  final Function()? onTap;

  const OutLinedButtonWidget({
    Key? key,
    required this.text,
    this.bgColor,
    this.textColor,
    required this.onTap,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          //height: 35,
          width: width,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.teal, width: 0.5),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            text,
            style:
                TextStyle(color: AppColors.teal, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class ButtonContainerWidget extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color bgColor;
  final Color textColor;
  final double fontSize;

  const ButtonContainerWidget({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.16),
            offset: const Offset(0, 1),
            blurRadius: 4.0,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontFamily: 'Brandon Text Medium',
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight),
      ),
    );
  }
}
