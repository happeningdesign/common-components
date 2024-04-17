import 'package:components/common_widget/app_text.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OfferPriceTxt extends StatelessWidget {
  const OfferPriceTxt({
    super.key,
    required this.price,
    this.textStyle,
  });

  final String price;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return AppText(
      'text',
      textStyle: textStyle ??
          Theme.of(context).textTheme.labelSmall?.copyWith(
                fontSize: 10,
                color: AppColors.txtSecondaryColor,
                decoration: TextDecoration.lineThrough,
              ),
    );
  }
}
