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
  });

  final void Function()? onPressed;
  final String title;
  final bool isLeftIcon, isRightIcon;
  final Widget? icon;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return (isLeftIcon || isRightIcon)
        ? Directionality(
            textDirection: isLeftIcon ? TextDirection.ltr : TextDirection.rtl,
            child: TextButton.icon(
              onPressed: onPressed,
              icon: icon!,
              label: AppText(
                title,
                textStyle: textStyle,
              ),
            ),
          )
        : TextButton(
            onPressed: onPressed,
            child: AppText(
              title,
              textStyle: textStyle,
            ),
          );
  }
}
