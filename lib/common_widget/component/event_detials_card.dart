import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class EventDetailItem {
  final String text;
  final Icon icon;
  final Function()? onTap;

  EventDetailItem({this.onTap, required this.text, required this.icon});
}

class EventDetailsCard extends StatelessWidget {
  EventDetailsCard({
    super.key,
    this.onRegisterPressed,
    required this.items,
    required this.title,
  });

  final void Function()? onRegisterPressed;
  final List<EventDetailItem> items;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppContainer(
          showShadow: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                title,
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
                    onPressed: items[index].onTap,
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
                      disabledIconColor: items[index].icon.color,
                    ),
                  );
                },
                separatorBuilder: (_, __) => gapH4,
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
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
