import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppCachedNetworkImage extends StatelessWidget {
  const AppCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit,
    this.height,
    this.width,
  });

  final String imageUrl;
  final BoxFit? fit;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Center(child: const Icon(Icons.error)),
      fit: fit ?? BoxFit.cover,
      height: height,
      width: width,
    );
  }
}
