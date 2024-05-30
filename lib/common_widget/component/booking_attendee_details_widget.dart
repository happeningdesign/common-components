import 'package:components/common_widget/app_asset_image.dart';
import 'package:components/common_widget/app_cached_netword_image.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/list_item_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BookingAttendeeDetailsWidget extends StatelessWidget {
  const BookingAttendeeDetailsWidget({
    super.key,
    required this.title,
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.ticketNo,
    required this.ticketType,
  });

  final String title, name, email, imageUrl, ticketNo, ticketType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title,
                    textStyle: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: AppColors.txtDisabledColor),
                  ),
                  AppText(
                    name,
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: AppColors.txtPrimaryColor),
                  ),
                  AppText(
                    email,
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.txtPrimaryColor),
                  ),
                ],
              ),
            ),
            gapW16,
            /*AppCachedNetworkImage(
              imageUrl: imageUrl,
              width: 88,
              height: 88,
            )*/
          ],
        ),
         Row(
          children: [
            Expanded(
              child: Visibility(
                visible: ticketNo.isNotEmpty,
                child: ListItemWidget(
                  title: 'Ticket No',
                  value: ticketNo,
                ),
              ),
            ),
            Expanded(
              child: Visibility(
                visible: ticketType.isNotEmpty,
                child: ListItemWidget(
                  title: 'Ticket type',
                  value: ticketType,
                ),
              ),
            ),
          ],
        ),
        gapH16,
      ],
    );
  }
}
