import 'package:components/common_widget/app_text.dart';
import 'package:flutter/material.dart';

class AppCheckBox extends StatelessWidget {
  const AppCheckBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Expanded(
          child: AppText(
            'This data that is collected will be used by the organiser to plan and manage the event for which you registered, as well as email you relevant details about the event. By placing this order I also agree to the organiser\'s terms.',
            textStyle: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ],
    );
  }
}
