import 'package:components/common_widget/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(this.text, {super.key, this.textStyle});

  final TextStyle? textStyle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      child: AppText(
        text,
        textStyle: textStyle,
      ),
    );
  }
}
/*

class ButtonTextTheme {
  static TextStyle mediumTextStyle = GoogleFonts.manrope(
      textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.40,
  ));

  static TextStyle largeTextStyle = GoogleFonts.manrope(
      textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.46,
  ));

  static TextStyle smallTextStyle = GoogleFonts.manrope(
      textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.46,
  ));
}
*/
