import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/price_txt_widget.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TicketPriceCard extends StatelessWidget {
  const TicketPriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                AppText(
                  'text',
                  textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: AppColors.infoColor,
                      ),
                ),
                AppText(
                  'text',
                  textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColors.txtDisabledColor,
                      ),
                ),
              ],
            ),
          ),
          const PriceTxtWidget(
            price: '₹8999',
            abbr: '+ 18 GST',
          ),
        ],
      ),
    );
  }
}
