import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.size = 24,
    this.weight = FontWeight.w500,
    this.color,
    this.letterSpacing,
    this.align = TextAlign.left,
  });

  const AppText.thin(
    this.text, {
    super.key,
    this.size = 10,
    this.weight = FontWeight.w400,
    this.color = const Color(0xFF838189),
    this.letterSpacing = 0.2,
    this.align = TextAlign.left,
  });

  const AppText.light(
    this.text, {
    super.key,
    this.size = 13,
    this.weight = FontWeight.w400,
    this.color = const Color(0xFF838189),
    this.letterSpacing = -0.4,
    this.align = TextAlign.left,
  });

  const AppText.bold(
    this.text, {
    super.key,
    this.size = 15,
    this.weight = FontWeight.w600,
    this.color = const Color(0xFF333034),
    this.letterSpacing = -0.5,
    this.align = TextAlign.left,
  });

  final String text;
  final double size;
  final Color? color;
  final FontWeight? weight;
  final double? letterSpacing;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
        fontFamily: 'SFProText',
        fontSize: size.sp,
        fontWeight: weight,
        color: color,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
