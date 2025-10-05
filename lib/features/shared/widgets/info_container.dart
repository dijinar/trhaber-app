import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoContainer extends StatelessWidget {
  final String? text;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? borderRadius;

  const InfoContainer({
    super.key,
    this.text,
    this.child,
    this.padding,
    this.textStyle,
    this.borderColor,
    this.backgroundColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        border: Border.all(
          color: borderColor ??
              Theme.of(context).colorScheme.onPrimary.withAlpha(150),
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 19.r),
      ),
      padding: padding ?? EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: child ??
          Text(
            text ?? '',
            style: textStyle ??
                Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withAlpha(150),
                    ),
          ),
    );
  }
}
