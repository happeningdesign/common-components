import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/plus_minus_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p16, vertical: Sizes.p8),
      child: Row(
        children: [
          Expanded(
            child: AppText(
              'Quantity: 2',
              textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: AppColors.txtPrimaryColor,
                  ),
            ),
          ),
          const PlusMinusWidget(),
        ],
      ),
    );
  }
}
