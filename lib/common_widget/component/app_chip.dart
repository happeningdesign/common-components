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
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: const BorderSide(color: Colors.transparent,width: 0)
      ),
      labelPadding: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      label: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.grey.shade200,
          borderRadius: BorderRadius.circular(100),
        ),
        child: AppText(
          label,
          textStyle: textStyle ??
              Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}
