import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import '../../theme/app_colors.dart' show AppColors;

class AppBottomPanel extends StatelessWidget {
  const AppBottomPanel({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Sizes.p8),
      margin: const EdgeInsets.all(Sizes.p16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(100),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: child,
    );
  }
}
