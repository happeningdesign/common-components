import 'package:components/common_widget/app_text.dart';
import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    this.backgroundColor,
    required this.label,
    this.textStyle,
  });

  final Color? backgroundColor;
  final String label;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: backgroundColor,
      label: AppText(
        label,
        textStyle: textStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 13,
                ),
      ),
    );
  }
}
