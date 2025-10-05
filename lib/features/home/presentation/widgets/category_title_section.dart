import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/services/share_service.dart';

import '../../../../gen/assets.gen.dart';

class CategoryTitleSection extends StatelessWidget {
  final String categoryName;
  final String categoryId;
  final Color categoryColor;
  final VoidCallback? onSeeAll;

  const CategoryTitleSection({
    super.key,
    required this.categoryName,
    required this.categoryId,
    required this.categoryColor,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.w,
        right: 12.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 10.h,
              bottom: 20.h,
              left: 20.w,
              right: 70.w,
            ),
            decoration: BoxDecoration(
              color: categoryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2.r),
                topRight: Radius.circular(2.r),
                bottomRight: Radius.circular(2.r),
              ),
            ),
            child: Text(
              // Turkish uppercase conversion - properly handling 'i' to 'İ'
              _toTurkishUpperCase(categoryName),
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
          ),
          if (onSeeAll != null)
            GestureDetector(
              onTap: onSeeAll,
              child: Text(
                "Tümünü gör",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withAlpha(100),
                    ),
              ),
            )
          else
            _SocialMediaIcons(),
        ],
      ),
    );
  }

  String _toTurkishUpperCase(String text) {
    if (text.contains('i')) {
      return text.replaceAll('i', 'İ').toUpperCase();
    }
    return text.toUpperCase();
  }
}

class _SocialMediaIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildIcon(context, Assets.icons.instagram, "categoryId"),
        SizedBox(width: 10.w),
        buildIcon(context, Assets.icons.x, "categoryId"),
        SizedBox(width: 10.w),
        buildIcon(context, Assets.icons.facebook, "categoryId"),
        SizedBox(width: 10.w),
        buildIcon(context, Assets.icons.phone, "categoryId"),
      ],
    );
  }

  //icon widget
  Widget buildIcon(BuildContext context, SvgGenImage icon, String categoryId) {
    return GestureDetector(
      onTap: () {
        if (icon == Assets.icons.instagram) {
          ShareService()
              .shareToInstagram("https://www.trhaber.com/$categoryId");
        } else if (icon == Assets.icons.x) {
          ShareService().shareToX("https://www.trhaber.com/$categoryId");
        } else if (icon == Assets.icons.phone) {
          ShareService().shareToWhatsApp("https://www.trhaber.com/$categoryId");
        } else if (icon == Assets.icons.facebook) {
          ShareService().shareToFacebook("https://www.trhaber.com/$categoryId");
          ShareService().shareText("https://www.trhaber.com/$categoryId");
        } else if (icon == Assets.icons.phone) {
          ShareService().shareText("https://www.trhaber.com/$categoryId");
        }
      },
      child: icon.svg(
        colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.onPrimary, BlendMode.srcIn),
        width: 20.w,
        height: 20.h,
      ),
    );
  }
}
