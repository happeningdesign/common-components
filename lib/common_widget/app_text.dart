import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.textStyle,
    this.textAlign,
    this.textDirection,
    this.icon,
    this.isRightIcon = false,
    this.maxLine,
    this.overflow,
    this.strutStyle,
  });

  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final String text;
  final Widget? icon;
  final bool isRightIcon;
  final int? maxLine;
  final TextOverflow? overflow;
  final StrutStyle? strutStyle;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? Directionality(
            textDirection: isRightIcon ? TextDirection.rtl : TextDirection.ltr,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon!,
                gapW4,
                AppText(
                  text,
                  textAlign: textAlign,
                  textStyle: textStyle,
                  textDirection: textDirection,
                  overflow: overflow,
                ),
              ],
            ),
          )
        : Text(
            text,
            style: textStyle,
            textAlign: textAlign,
            textDirection: textDirection,
            maxLines: maxLine,
            overflow: overflow,
            strutStyle: strutStyle,
          );
  }
}
