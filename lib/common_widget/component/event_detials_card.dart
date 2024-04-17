import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EventDetailItem {
  final String text;
  final Icon icon;

  EventDetailItem({required this.text, required this.icon});
}

class EventDetailsCard extends StatelessWidget {
  EventDetailsCard({
    super.key,
    this.onRegisterPressed,
  });

  final void Function()? onRegisterPressed;
  final List<EventDetailItem> items = [
    EventDetailItem(
        text: '17 - 21 SEP,  2024',
        icon: const Icon(Icons.calendar_today_outlined)),
    EventDetailItem(
        text: '8 AM | 9 PM (IST)',
        icon: const Icon(Icons.access_time_outlined)),
    EventDetailItem(
        text: 'Hitex Exhibition Center, Hyderabad',
        icon: const Icon(Icons.location_on_outlined)),
    EventDetailItem(
        text: 'uxindia@umo.design', icon: const Icon(Icons.email_outlined)),
    EventDetailItem(
        text: '+91-8096204373', icon: const Icon(Icons.phone_enabled_outlined)),
    EventDetailItem(
        text: '2023.UX-INDIA.ORG',
        icon: const Icon(Icons.open_in_new_outlined)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          'EVENT INFORMATION',
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
                'UXINDIA 2024: International Conference in User Experience Design',
                textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.txtPrimaryColor,
                    ),
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
                itemCount: items.length,
              ),
              /*gapH24,
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
                    onPressed: onRegisterPressed,
                  )
                ],
              )*/
            ],
          ),
        ),
      ],
    );
  }
}
