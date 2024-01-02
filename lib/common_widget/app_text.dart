import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.textStyle,
    this.textAlign,
    this.textDirection,
  });

  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      maxLines: 2,
    );
  }
}
