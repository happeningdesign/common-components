import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppDropdownInput<T> extends StatelessWidget {
  final String labelText;
  final String hintText;
  final List<T> options;
  final T? value;
  final String Function(T) getLabel;
  final void Function(T?) onChanged;
  final String? Function(T?)? validator;
  final Widget? suffixIcon;
  final InputBorder? inputBorder;
  final EdgeInsetsGeometry contentPadding;
  final FloatingLabelBehavior? floatingLabelBehavior;

  const AppDropdownInput(
      {super.key,
      this.hintText = 'Please select an Option',
      this.labelText = 'Please select an Option',
      this.options = const [],
      required this.getLabel,
      required this.value,
      required this.onChanged,
      this.suffixIcon,
      this.validator,
      this.inputBorder,
      this.floatingLabelBehavior = FloatingLabelBehavior.always,
      this.contentPadding =
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0)});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        contentPadding: contentPadding,
        labelText: labelText,
        hintText: hintText,
        floatingLabelBehavior: floatingLabelBehavior,
        border: inputBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 0.01,
                  color: AppColors.inputBorderColor,
                ),
                borderRadius: BorderRadius.circular(Sizes.p8)),
        suffixIcon: suffixIcon,
        hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.txtSecondaryColor,
            ),
        labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.txtSecondaryColor,
              fontWeight: FontWeight.w400,
            ),
      ),
      value: value,
      isDense: true,
      isExpanded: true,
      onChanged: onChanged,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      items: options.map((T value) {
        return DropdownMenuItem<T>(
          value: value,
          child: AppText(
            getLabel(value),
            textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.txtSecondaryColor,
                  fontWeight: FontWeight.w400,
                ),
            maxLine: 2,
          ),
        );
      }).toList(),
      hint: AppText(
        hintText,
        textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppColors.txtSecondaryColor,
            ),
      ),
    );
  }
}
