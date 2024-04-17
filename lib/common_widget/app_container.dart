import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.height,
    this.width,
    this.clipBehavior,
    this.bgColor = Colors.white,
    this.showShadow = true,
  });

  final EdgeInsetsGeometry padding;
  final Widget child;
  final double? height, width;
  final Clip? clipBehavior;
  final Color bgColor;
  final bool showShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: height,
      width: width,
      clipBehavior: clipBehavior ?? Clip.antiAlias,
      decoration: ShapeDecoration(
        color: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        shadows: showShadow
            ? const [
                BoxShadow(
                  color: Color(0x196A6A6A),
                  blurRadius: 2,
                  offset: Offset(1, 1),
                  spreadRadius: 0,
                ),
                BoxShadow(
                  color: Color(0x281D1D1D),
                  blurRadius: 1,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ]
            : null,
      ),
      child: child,
    );
  }
}
