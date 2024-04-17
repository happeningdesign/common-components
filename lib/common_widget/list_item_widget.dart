import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({
    super.key,
    required this.title,
    required this.value,
  });

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title,
          textStyle: Theme.of(context)
              .textTheme
              .labelSmall
              ?.copyWith(color: AppColors.txtSecondaryColor),
        ),
        gapH4,
        AppText(
          value,
          textStyle: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.txtPrimaryColor),
        )
      ],
    );
  }
}
