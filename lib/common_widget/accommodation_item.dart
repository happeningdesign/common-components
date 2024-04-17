import 'package:cached_network_image/cached_network_image.dart';
import 'package:components/common_widget/app_cached_netword_image.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/price_txt_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AccommodationItem extends StatelessWidget {
  const AccommodationItem({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          height: 244,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: AppCachedNetworkImage(
            imageUrl: imageUrl,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p8, vertical: Sizes.p4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'The Zuri Whitefield',
                textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.txtPrimaryColor,
                    ),
              ),
              Row(
                children: [
                  AppText(
                    'Whitefield, KA',
                    textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.txtSecondaryColor,
                          fontSize: 10,
                        ),
                    icon: const Icon(
                      Icons.location_pin,
                      size: Sizes.p12,
                    ),
                  ),
                  gapW8,
                  AppText(
                    '4-star hotel',
                    textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.txtSecondaryColor,
                          fontSize: 10,
                        ),
                    icon: const Icon(
                      Icons.star,
                      size: Sizes.p12,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PriceTxtWidget(
                    price: '₹3499',
                    abbr: ' /night',
                  ),
                  AppText(
                    '*Inclusive of tax',
                    textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.txtDisabledColor,
                        ),
                  )
                ],
              ),
              Row(
                children: [
                  AppText(
                    '₹8999',
                    textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.txtDisabledColor,
                        ),
                  ),
                  gapW8,
                  AppText(
                    '12% off discount',
                    textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: AppColors.successColor,
                        ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
