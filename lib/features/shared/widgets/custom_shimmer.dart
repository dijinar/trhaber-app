import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  final int itemCount;
  final double height;
  final int lineCount;
  final double spacing;
  final double lineSpacing;
  final bool isAvatar;

  const CustomShimmer({
    super.key,
    this.itemCount = 4,
    this.height = 48,
    this.lineCount = 2,
    this.spacing = 16,
    this.lineSpacing = 8,
    this.isAvatar = false,
  });

  @override
  Widget build(BuildContext context) {
    final baseColor = Colors.grey.shade300;
    final highlightColor = Colors.grey.shade100;

    final barHeight = height * 0.6;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Column(
        children: List.generate(itemCount, (_) {
          return Padding(
            padding: EdgeInsets.only(bottom: spacing),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isAvatar) ...[
                  Container(
                    width: height,
                    height: height,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(lineCount, (i) {
                      return Padding(
                        padding: EdgeInsets.only(
                            bottom: i == lineCount - 1 ? 0 : lineSpacing),
                        child: Container(
                          height: barHeight / lineCount,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      );
                    }),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
