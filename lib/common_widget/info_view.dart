import 'package:components/common_widget/app_container.dart';
import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class InfoView extends StatelessWidget {
  const InfoView({
    super.key,
    required this.leadingIcon,
    required this.titleTxt,
    this.descTxt,
    this.trailing,
    this.padding,
    this.bgColor = Colors.white,
  });

  final Widget leadingIcon;
  final Widget titleTxt;
  final Widget? descTxt;
  final Widget? trailing;
  final Color bgColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      showShadow: false,
      bgColor: bgColor,
      padding: padding?? const EdgeInsets.symmetric(horizontal: Sizes.p16, vertical: 13),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          leadingIcon,
          gapW12,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleTxt,
                descTxt??const SizedBox.shrink(),
              ],
            ),
          ),
          gapW12,
          trailing??const SizedBox.shrink()
        ],
      ),
    );
  }
}
