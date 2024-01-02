
import 'package:components/common_widget/app_button.dart';
import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EventDetailsCard extends StatelessWidget {
  const EventDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            'UXINDIA 2024: International Conference in User Experience Design',
            textStyle: Theme.of(context).textTheme.titleMedium,
          ),
          gapH16,
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return TextButton.icon(
                onPressed: () {},
                label: Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    'SEPTEMBER 28, 2023',
                    textStyle: Theme.of(context).textTheme.labelSmall,
                  ),
                ),
                icon: const Icon(
                  Icons.calendar_today_outlined,
                  color: AppColors.txtSecondaryColor,
                ),
                style: TextButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 4)),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemCount: 3,
          ),
          gapH24,
          Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppText(
                      '₹6,999',
                      textStyle: Theme.of(context).textTheme.titleSmall,
                    ),
                    gapW4,
                    AppText(
                      'onwards',
                      textStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
              AppButton(
                'Register',
              )
            ],
          )
        ],
      ),
    );
  }
}
