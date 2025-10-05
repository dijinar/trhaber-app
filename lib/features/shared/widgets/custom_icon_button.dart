import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trnews/gen/assets.gen.dart';

class CustomIconButton extends StatelessWidget {
  final Widget? icon;
  final String? iconPath;
  final VoidCallback onPressed;
  final Color? color;
  final Color? backgroundColor;
  final double? size;
  final double? iconSize;
  final double? padding;

  const CustomIconButton({
    super.key,
    this.icon,
    this.iconPath,
    required this.onPressed,
    this.backgroundColor,
    this.color,
    this.size,
    this.iconSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final resolvedColor = color ?? Theme.of(context).colorScheme.primary;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        padding: EdgeInsets.all(padding ?? 8.w),
        decoration: BoxDecoration(
          color: backgroundColor ??
              Theme.of(context).colorScheme.primary.withAlpha(50),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: icon ??
              (iconPath != null
                  ? SvgPicture.asset(
                      iconPath!,
                      width: iconSize ?? 20.w,
                      height: iconSize ?? 20.h,
                      colorFilter:
                          ColorFilter.mode(resolvedColor, BlendMode.srcIn),
                    )
                  : const SizedBox()),
        ),
      ),
    );
  }
}
