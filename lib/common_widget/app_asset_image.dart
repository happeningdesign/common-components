import 'package:flutter/material.dart';

class AppAssetImage extends StatelessWidget {
  const AppAssetImage({
    super.key,
    required this.name,
    this.boxFit,
    this.alignment = Alignment.center,
    this.width,
    this.height,
  });

  final String name;
  final BoxFit? boxFit;
  final AlignmentGeometry alignment;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      fit: boxFit,
      alignment: alignment,
      width: width,
      height: height,
    );
  }
}
