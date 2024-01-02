import 'package:components/common_widget/app_text.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TicketHeader extends StatelessWidget {
  const TicketHeader({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: const BoxDecoration(
        color: AppColors.txtPrimaryColor,
      ),
      child: Center(
        child: AppText(
          title ?? 'MOST POPULAR',
          textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
