import 'package:components/common_widget/app_button.dart';
import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/price_txt_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AdOnListItem extends StatelessWidget {
  const AdOnListItem({
    super.key,
    required this.adOnAssets,
  });

  final String adOnAssets;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    SvgPicture.asset(adOnAssets),
                    gapW8,
                    PriceTxtWidget(
                      price: '₹5799',
                      abbr: '/ person',
                    )
                  ],
                ),
              ),
              AppButton('Add'),
            ],
          ),
          AppText(
            'Networking dinner',
            textStyle: Theme.of(context).textTheme.titleSmall,
          ),
          AppText(
            'Gain access to an exclusive dinner party dedicated for networking on Day 3 - 13th SEP.',
            textStyle: Theme.of(context).textTheme.labelSmall,
          )
        ],
      ),
    );
  }
}
