import 'package:components/common_widget/app_text.dart';
import 'package:flutter/material.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({
    super.key,
    required this.title,
    required this.value,
    this.onChanged,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final String title;
  final bool value;
  final Function(bool?)? onChanged;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: title.isNotEmpty,
      replacement: Checkbox(value: value, onChanged: onChanged),
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Checkbox(value: value, onChanged: onChanged),
          Expanded(
            child: AppText(
              title,
              textStyle: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
