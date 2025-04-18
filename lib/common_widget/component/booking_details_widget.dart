import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/list_item_widget.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BookingDetailsWidget extends StatelessWidget {
  const BookingDetailsWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.date,
    required this.location,
  });

  final String title, imageUrl, date, location;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AppText(
                title,
                textStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColors.txtPrimaryColor),
              ),
            ),
            gapW16,
            Image.asset(
              imageUrl,
              width: 88,
              height: 88,
            )
          ],
        ),
        Row(
          children: [
            const Expanded(
              child: ListItemWidget(
                title: 'Time',
                value: '8 AM | 9 PM (IST)',
              ),
            ),
            Expanded(
              child: ListItemWidget(
                title: 'Date',
                value: date,
              ),
            ),
          ],
        ),
        gapH8,
        Row(
          children: [
            Expanded(
              child: ListItemWidget(
                title: 'Location',
                value: location,
              ),
            ),
            const Expanded(
              child: ListItemWidget(
                title: 'Organized By',
                value: 'UMO Design Foundation',
              ),
            ),
          ],
        ),
        gapH16,
      ],
    );
  }
}
