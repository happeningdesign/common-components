import 'package:components/constant/app_sizes.dart';
import 'package:flutter/material.dart';

class AppListTile extends StatelessWidget {
  const AppListTile({
    super.key,
    this.leading,
    this.title,
    this.trailing,
    this.subtitle,
    this.contentPadding,
  });

  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final Widget? subtitle;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding,
      leading: leading,
      title: title,
      trailing: trailing,
      subtitle: subtitle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.p8)
      ),
      tileColor: Colors.white,
    );
  }
}
