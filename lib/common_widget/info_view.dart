import 'package:components/common_widget/app_container.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  const InfoView({
    super.key,
    required this.leadingIcon,
    required this.titleTxt,
    required this.trailing,
    this.bgColor = Colors.white,
  });

  final Widget leadingIcon;
  final Widget titleTxt;
  final Widget trailing;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      showShadow: false,
      bgColor: bgColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leadingIcon,
          gapW12,
          Expanded(
            child: titleTxt,
          ),
          gapW12,
          trailing
        ],
      ),
    );
  }
}
