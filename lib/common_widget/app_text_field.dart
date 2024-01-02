import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintStyle,
    this.inputBorder,
    required this.hintText,
    required this.controller,
  });

  final String hintText;
  final TextStyle? hintStyle;
  final InputBorder? inputBorder;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: inputBorder ?? const OutlineInputBorder(),
        hintText: hintText,
        hintStyle: hintStyle ??
            Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.txtSecondaryColor,
                ),
      ),
    );
  }
}
