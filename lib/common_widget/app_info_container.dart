import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppInfoContainer extends StatelessWidget {
  const AppInfoContainer({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
                Sizes.p16, Sizes.p12, Sizes.p16, Sizes.p4),
            child: AppText(
              title,
              textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: AppColors.txtPrimaryColor,
                  ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(Sizes.p16),
            child: AppText(
              description,
              textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.txtSecondaryColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
