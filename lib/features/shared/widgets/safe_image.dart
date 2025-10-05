import 'package:flutter/material.dart';

class SafeImage extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadiusGeometry? borderRadius;
  final Widget? placeholder;
  final bool isCircle;

  const SafeImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.placeholder,
    this.isCircle = false,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null || url!.isEmpty) {
      return placeholder ??
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: isCircle ? null : borderRadius,
            ),
            width: width,
            height: height,
            alignment: Alignment.center,
            child: const Icon(Icons.broken_image, color: Colors.grey),
          );
    }

    final image = Image.network(
      url!,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (context, error, stackTrace) =>
          placeholder ??
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
            ),
            width: width,
            height: height,
            alignment: Alignment.center,
            child: const Icon(Icons.broken_image, color: Colors.grey),
          ),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return placeholder ??
            Container(
              width: width,
              height: height,
              alignment: Alignment.center,
              child: const CircularProgressIndicator(strokeWidth: 2),
            );
      },
    );

    if (borderRadius != null) {
      return ClipRRect(
          borderRadius: borderRadius ?? BorderRadius.zero, child: image);
    }
    if (isCircle) {
      return ClipOval(child: image);
    }

    return image;
  }
}
