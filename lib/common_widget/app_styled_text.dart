import 'package:components/constant/app_sizes.dart';
import 'package:components/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:styled_text/tags/styled_text_tag_base.dart';
import 'package:styled_text/widgets/styled_text.dart';

class AppStyledText extends StatelessWidget {
  const AppStyledText(
    this.title, {
    super.key,
    this.textStyle,
    this.tags,
  });

  final String title;
  final TextStyle? textStyle;
  final Map<String, StyledTextTagBase>? tags;

  @override
  Widget build(BuildContext context) {
    return StyledText(
      text: title,
      style: textStyle ??
          Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AppColors.txtSecondaryColor),
      tags: tags,
    );
  }
}
