import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/price_txt_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TicketTitleWidget extends StatelessWidget {
  const TicketTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            'Hurry, Only a few left',
            textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: AppColors.errorColor
            ),
          ),
          gapH4,
          AppText(
            'Super Early Bird',
            textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
          ),
          gapH12,
          PriceTxtWidget(
            price: '₹6999',
            abbr: '+ 18 GST',
          ),
        ],
      ),
    );
  }
}
