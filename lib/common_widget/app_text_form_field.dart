import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.hintStyle,
    this.inputBorder,
    required this.hintText,
    required this.controller,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines,
    this.onTap,
    this.enabled,
    this.readOnly = false,
    this.onChanged,
    this.validator,
    this.inputFormatters,
    this.keyboardType,
    this.obscureText = false,
    this.fillColor,
    this.floatingLabelBehavior = FloatingLabelBehavior.always,
  });

  final String hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final InputBorder? inputBorder;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int? maxLines;
  final void Function()? onTap;
  final bool? enabled;
  final bool readOnly;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? fillColor;
  final FloatingLabelBehavior? floatingLabelBehavior;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      enabled: enabled,
      onTap: onTap,
      readOnly: readOnly,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
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
              borderRadius: BorderRadius.circular(Sizes.p8),
            ),
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
        fillColor: fillColor,
        filled: fillColor != null,
        isDense: true,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        floatingLabelBehavior: floatingLabelBehavior,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
      ),
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      maxLines: maxLines,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
