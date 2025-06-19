import 'package:components/common_widget/app_text.dart';
import 'package:flutter/material.dart';

class AppTxtButton extends StatelessWidget {
  const AppTxtButton({
    super.key,
    this.onPressed,
    required this.title,
    this.isLeftIcon = false,
    this.isRightIcon = false,
    this.icon,
    this.textStyle,
    this.shape,
    this.minimumSize = const Size(110, 50),
    this.backgroundColor,
  });

  final void Function()? onPressed;
  final String title;
  final bool isLeftIcon, isRightIcon;
  final Widget? icon;
  final TextStyle? textStyle;
  final Size minimumSize;
  final OutlinedBorder? shape;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return (isLeftIcon || isRightIcon)
        ? Directionality(
            textDirection: isLeftIcon ? TextDirection.ltr : TextDirection.rtl,
            child: TextButton.icon(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                minimumSize: minimumSize,
                shape: shape,
                backgroundColor: backgroundColor,
              ),
              icon: icon!,
              label: AppText(
                title,
                textStyle: textStyle,
              ),
            ),
          )
        : TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              minimumSize: minimumSize,
              shape: shape,
              backgroundColor: backgroundColor,
            ),
            child: AppText(
              title,
              textStyle: textStyle,
            ),
          );
  }
}
