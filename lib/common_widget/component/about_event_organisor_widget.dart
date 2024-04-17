import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/component/event_detials_card.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AboutEventOrganisorWidget extends StatelessWidget {
   AboutEventOrganisorWidget({super.key});
  final List<EventDetailItem> items = [
    EventDetailItem(
        text: 'UMO Design Foundation',
        icon: const Icon(Icons.perm_contact_cal_outlined)),
    EventDetailItem(
        text: 'www.umo.design',
        icon: const Icon(Icons.open_in_new_outlined)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          'ABOUT THE ORGANISER',
          textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: AppColors.txtSecondaryColor,
              ),
        ),
        gapH8,
        AppContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'ORGANISED BY',
                textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: AppColors.txtSecondaryColor,
                    ),
              ),
              gapH12,
              ListView.separated(
                itemBuilder: (context, index) {
                  return TextButton.icon(
                    onPressed: () {},
                    label: Align(
                      alignment: Alignment.centerLeft,
                      child: AppText(
                        items[index].text,
                        textStyle:
                            Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: AppColors.txtPrimaryColor,
                                ),
                      ),
                    ),
                    icon: items[index].icon,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 4),
                    ),
                  );
                },
                separatorBuilder: (_, __) => gapH4,
                shrinkWrap: true,
                itemCount: items.length,
                physics: const ClampingScrollPhysics(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
