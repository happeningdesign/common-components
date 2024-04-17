import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/app_txt_button.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SecondaryAppBarWidget extends StatelessWidget {
  const SecondaryAppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.white,
      title: AppText(
        title,
        textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppColors.txtPrimaryColor,
            ),
      ),
      leading: AppTxtButton(
        title: 'Back',
        textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.primaryColor,
            ),
        icon: const Icon(
          Icons.chevron_left,
          color: AppColors.primaryColor,
        ),
        isLeftIcon: true,
      ),
      leadingWidth: 100,
    );
  }
}
