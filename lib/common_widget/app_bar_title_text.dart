import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppBarTitleText extends StatelessWidget {
  const AppBarTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'EVENTUM',
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 25,
        letterSpacing: 2,
        height: 0,
        color: AppColors.txtPrimaryColor,
      ),
    );
  }
}
