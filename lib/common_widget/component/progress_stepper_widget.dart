import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProgressStepperWidget extends StatelessWidget {
  const ProgressStepperWidget({
    super.key,
    required this.title,
    required this.step,
    required this.pageName,
  });

  final String title, step, pageName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        gapW12,
        Expanded(
          child: AppText(
            title,
            textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.txtSecondaryColor,
                ),
          ),
        ),
        Column(
          children: [
            AppText(
              step,
              textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppColors.txtSecondaryColor,
                  ),
            ),
            AppText(
              pageName,
              textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.txtPrimaryColor,
                  ),
            )
          ],
        )
      ],
    );
  }
}
