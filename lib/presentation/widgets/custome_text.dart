import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final String fontFamily;

  CustomText({
    super.key,
    required this.text,
    this.fontFamily = 'PlusJakartaSans',
    double? fontSize,
    this.color,
    this.fontWeight,
  }) : fontSize = fontSize ?? 16.0.sp;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
