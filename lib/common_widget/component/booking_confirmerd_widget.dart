import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingConfirmedWidget extends StatelessWidget {
  const BookingConfirmedWidget({super.key, required this.svgAssets});
  final String svgAssets;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.p20,
        vertical: Sizes.p32,
      ),
      child: Column(
        children: [
          SvgPicture.asset(svgAssets,),
          AppText(
            'Booking Confirmed!',
            textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.txtPrimaryColor,
                ),
          ),
          gapH12,
          AppText(
            'Your tickets are successfully booked. A confirmation email has been sent to jamesdoe200@gmail.com',
            textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppColors.txtPrimaryColor,
                ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
