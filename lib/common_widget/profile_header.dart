import 'package:components/common_widget/app_text.dart';
import 'package:components/common_widget/app_txt_button.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.p16, vertical: Sizes.p24,),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                padding: EdgeInsets.all(Sizes.p4),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Sizes.p8)),
                    color: const Color(0xFF00BFA5)),
                child: Center(
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              gapW8,
              Expanded(
                child: AppText(
                  'MEMBER SINCE 2023',
                  textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: AppColors.txtSecondaryColor,
                      ),
                ),
              ),
              AppTxtButton(
                title: 'Edit profile',
                onPressed: () {},
              ),
            ],
          ),
          gapH16,
          AppText(
            'James Doe',
            textStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: AppColors.txtPrimaryColor,
                ),
          ),
          AppText(
            'James Doe',
            textStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.txtSecondaryColor,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ],
      ),
    );
  }
}
