import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class PriceTxtWidget extends StatelessWidget {
  const PriceTxtWidget({
    super.key,
    required this.price,
    this.abbr,
  });

  final String price;
  final String? abbr;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppText(
          price,
          textStyle: Theme.of(context).textTheme.titleSmall,
        ),
        gapW4,
        AppText(
          abbr ?? '',
          textStyle: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
