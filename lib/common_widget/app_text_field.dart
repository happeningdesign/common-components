import 'package:components/constant/app_sizes.dart';
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
    this.suffixIcon,
    this.maxLines,
    this.onTap,
    this.enabled,
    this.readOnly = false,
    this.onChanged,
    this.textStyle,
  });

  final String hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? textStyle;
  final InputBorder? inputBorder;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final int? maxLines;
  final void Function()? onTap;
  final bool? enabled;
  final bool readOnly;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      style: textStyle ??
          Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.txtSecondaryColor,
                fontWeight: FontWeight.w400,
              ),
      decoration: InputDecoration(
          border: inputBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0.01,
                    color: AppColors.inputBorderColor,
                  ),
                  borderRadius: BorderRadius.circular(Sizes.p8)),
          hintText: hintText,
          labelText: labelText,
          hintStyle: hintStyle ??
              Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.txtSecondaryColor,
                  ),
          labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.txtSecondaryColor,
                fontWeight: FontWeight.w400,
              ),
          isDense: true,
          suffixIcon: suffixIcon,
          floatingLabelBehavior: FloatingLabelBehavior.always),
      maxLines: maxLines,
      onChanged: onChanged,
    );
  }
}
