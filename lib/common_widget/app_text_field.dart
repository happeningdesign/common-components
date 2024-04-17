import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintStyle,
    this.inputBorder,
    required this.hintText,
    required this.controller,
    this.labelText,
  });

  final String hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final InputBorder? inputBorder;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: inputBorder ??
            const OutlineInputBorder(
              borderSide: BorderSide(
                width: 0.1,
                color: AppColors.borderColor,
              ),
            ),
        hintText: hintText,
        labelText: labelText,
        hintStyle: hintStyle ??
            Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.txtSecondaryColor,
                ),
        labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: AppColors.txtSecondaryColor,
        ),
        isDense: true
      ),
    );
  }
}
