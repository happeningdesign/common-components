import 'package:components/common_widget/app_text_form_field.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppDatePicker extends StatelessWidget {
  const AppDatePicker({
    super.key,
    required this.firstDate,
    required this.lastDate,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.validator,
    this.fillColor,
    this.dateFormat = 'MM/dd/yyyy',
  });

  final String dateFormat;
  final DateTime firstDate;
  final DateTime lastDate;
  final String hintText;
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      readOnly: true,
      onTap: () => _showPicket(context),
      labelText: labelText,
      hintText: hintText,
      suffixIcon: const Icon(Icons.calendar_today_outlined),
      controller: controller,
      validator: validator,
      fillColor: fillColor,
    );
  }

  void _showPicket(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        firstDate: firstDate,
        lastDate: lastDate,
        builder: (context, child) {
          return Theme(
            data: ThemeData.light().copyWith(
              dialogTheme: const DialogTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      Sizes.p8,
                    ),
                  ),
                ),
              ),
            ),
            child: child ?? Container(),
          );
        });
    if (selectedDate != null) {
      controller.text = DateFormat(dateFormat).format(selectedDate);
    }
  }
}
