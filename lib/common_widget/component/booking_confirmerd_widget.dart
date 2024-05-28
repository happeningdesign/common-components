import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingConfirmedWidget extends StatelessWidget {
  const BookingConfirmedWidget({
    super.key,
    required this.svgAssets,
    required this.email,
  });

  final String svgAssets;
  final String email;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.p20,
        vertical: Sizes.p32,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            svgAssets,
          ),
          gapH24,
          AppText(
            'Booking Confirmed!',
            textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: AppColors.txtPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
          ),
          gapH12,
          AppText(
            'Your tickets are successfully booked. A confirmation email has been sent to $email',
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
