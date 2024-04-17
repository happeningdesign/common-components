import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/app_txt_button.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.p12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 72,
                height: 72,
                child: SvgPicture.asset('assets/icons/standard_pass.svg'),
              ),
              gapW12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Standard pass',
                      textStyle:
                          Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: AppColors.txtPrimaryColor,
                              ),
                    ),
                    AppText(
                      'Super Early Bird',
                      textStyle:
                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: AppColors.txtPrimaryColor,
                              ),
                    ),
                  ],
                ),
              ),
              AppText(
                '₹6999',
                textStyle: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppTxtButton(
                title: 'Remove',
                textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      color: AppColors.errorColor,
                    ),
              ),
              const Expanded(child: SizedBox.shrink()),
              AppText(
                'Size M',
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.txtPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              gapW20,
              AppText(
                'Qty 1',
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.txtPrimaryColor,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
