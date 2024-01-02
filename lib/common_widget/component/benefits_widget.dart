import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BenefitsWidget extends StatelessWidget {
  const BenefitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          'Benefits include:',
          textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: AppColors.txtSecondaryColor
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  AppText(
                    '.',
                    textStyle: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Expanded(
                    child: AppText(
                      'Early access to conference',
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.txtPrimaryColor),
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) => gapH4,
            itemCount: 3,
          ),
        )
      ],
    );
  }
}
