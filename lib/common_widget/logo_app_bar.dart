import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAppBar extends StatelessWidget {
  const LogoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('assets/icons/eventum_logo.svg');
  }
}
