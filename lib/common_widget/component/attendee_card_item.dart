import 'package:components/common_widget/adon_list_item.dart';
import 'package:components/common_widget/app_button.dart';
import 'package:components/common_widget/app_chcekbox.dart';
import 'package:components/common_widget/app_container.dart';
import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/app_text_field.dart';
import 'package:components/common_widget/app_txt_button.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AttendeeCardItem extends StatelessWidget {
  const AttendeeCardItem({super.key, required this.headerSvg});

  final String headerSvg;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: EdgeInsets.zero,
      child: ExpansionTile(
        title: Row(
          children: [
            SvgPicture.asset(headerSvg),
            gapW12,
            Expanded(
              child: AppText(
                'Attendee 1 · Standard Pass',
                textStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.txtPrimaryColor,
                    ),
              ),
            ),
          ],
        ),
        tilePadding: EdgeInsets.symmetric(
          horizontal: Sizes.p16,
          vertical: 0,
        ),
        childrenPadding: EdgeInsets.symmetric(
          horizontal: Sizes.p16,
          vertical: Sizes.p24,
        ),
        shape: Border(),
        children: [
          AppTextField(
            labelText: 'Email address',
            hintText: 'your@email.com',
            controller: TextEditingController(),
          ),
          gapH24,
          AppTextField(
            labelText: 'Mobile number',
            hintText: '000-000-0000',
            controller: TextEditingController(),
          ),
          gapH24,
          AppTextField(
            labelText: 'First name',
            hintText: 'Enter name',
            controller: TextEditingController(),
          ),
          gapH24,
          AppTextField(
            labelText: 'Last name',
            hintText: 'Enter name',
            controller: TextEditingController(),
          ),
          gapH24,
          AppTextField(
            labelText: 'Gender',
            hintText: 'Select',
            controller: TextEditingController(),
          ),
          gapH24,
          const AppCheckBox(
            title:
                'This data that is collected will be used by the organiser to plan and manage the event for which you registered, as well as email you relevant details about the event. By placing this order I also agree to the organiser\'s terms.',
            value: false,
          ),
          const Divider(),
          gapH16,
          AppText(
            'You might also like',
            textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.txtPrimaryColor,
                ),
          ),
          gapH16,
          ListView.separated(
            itemBuilder: (context, index) => AdOnListItem(
              adOnAssets: 'assets/icons/adon.svg',
            ),
            separatorBuilder: (_, __) => gapH16,
            itemCount: 2,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
          ),
          gapH24,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTxtButton(
                title: 'Delete',
                textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: AppColors.errorColor,
                    ),
                icon: const Icon(
                  Icons.delete_outline,
                  color: AppColors.errorColor,
                ),
                isRightIcon: true,
              ),
              AppButton(
                'Save',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
