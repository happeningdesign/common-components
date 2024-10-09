import 'package:components/common_widget/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
    this.text, {
    super.key,
    this.textStyle,
    this.onPressed,
    this.isLeftIcon = false,
    this.isRightIcon = false,
    this.icon,
    this.minimumSize = const Size(110, 50),
    this.shape,
    this.backgroundColor,
  });

  final TextStyle? textStyle;
  final String text;
  final void Function()? onPressed;
  final Size minimumSize;
  final OutlinedBorder? shape;
  final bool isLeftIcon, isRightIcon;
  final Widget? icon;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return (isLeftIcon || isRightIcon)
        ? Directionality(
            textDirection: isLeftIcon ? TextDirection.ltr : TextDirection.rtl,
            child: FilledButton.icon(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                minimumSize: minimumSize,
                shape: shape,
                backgroundColor: backgroundColor,
              ),
              icon: icon!,
              label: AppText(
                text,
                textStyle: textStyle,
              ),
            ),
          )
        : FilledButton(
            style: FilledButton.styleFrom(
              minimumSize: minimumSize,
              shape: shape,
              backgroundColor: backgroundColor,
            ),
            onPressed: onPressed,
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
