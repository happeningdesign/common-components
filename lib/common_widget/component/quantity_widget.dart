import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/plus_minus_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: Sizes.p12),
      child: Row(
        children: [
          Expanded(
            child: AppText('Quantity: 2'),
          ),
          PlusMinusWidget(),
        ],
      ),
    );
  }
}
