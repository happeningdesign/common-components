import 'package:components/common_widget/app_button.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BottomPriceWidget extends StatelessWidget {
  const BottomPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p16),
      decoration: const BoxDecoration(
        color: Colors.white,
       boxShadow: [
         BoxShadow(
           color: Color(0x1E484848),
           blurRadius: 16,
           offset: Offset(0, -3),
           spreadRadius: 0,
         )
       ]
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  'Total: ₹6999',
                  textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: AppColors.txtPrimaryColor,
                      ),
                ),
                AppText(
                  '1 item',
                  textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.txtSecondaryColor,
                      ),
                )
              ],
            ),
          ),
          AppButton(
            'Proceed',
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
