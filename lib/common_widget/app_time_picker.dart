import 'package:components/common_widget/app_text_form_field.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppTimePicker extends StatelessWidget {
  const AppTimePicker({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    this.validator,
    this.fillColor,
  });

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
      suffixIcon: const Icon(Icons.access_time),
      controller: controller,
      validator: validator,
      fillColor: fillColor,
    );
  }

  void _showPicket(BuildContext context) async {
    TimeOfDay? selectedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
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
    if (selectedTime != null) {
      controller.text =
          '${selectedTime.hour}:${selectedTime.minute} ${selectedTime.period.name.toUpperCase()}';
    }
  }
}
