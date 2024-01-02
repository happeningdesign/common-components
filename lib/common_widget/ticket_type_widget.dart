import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicketTypeWidget extends StatelessWidget {
  const TicketTypeWidget({
    super.key,
    required this.svgAsset,
  });

  final String svgAsset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Sizes.p16),
      child: Column(
        children: [
          SvgPicture.asset(svgAsset),
          gapH12,
          AppText(
            'Elite Pass',
            textStyle: Theme.of(context).textTheme.titleMedium,
          ),
          gapH4,
          AppText(
            'Access to 4 Days from 12th to 15th SEP',
            textStyle: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
