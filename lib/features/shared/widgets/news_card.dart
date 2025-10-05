import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/config/app_router.dart';
import 'package:trnews/features/home/domain/models/category_news/category_news_model.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';
import 'package:trnews/gen/assets.gen.dart';

class NewsCard extends StatelessWidget {
  final CategoryNewsModel news;
  final VoidCallback? onTap;
  const NewsCard({super.key, required this.news, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ??
          () {
            context.router.push(
              NewsDetailRoute(
                newsId: news.id,
              ),
            );
          },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(50),
              offset: const Offset(0, 10),
              blurRadius: 30,
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // News Image

            SafeImage(
              width: 100.w,
              height: 100.h,
              url: news.image,
              borderRadius: BorderRadius.circular(2.r),
            ),

            SizedBox(width: 12.w),
            // News Text
            SizedBox(
              width: 220.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    news.title,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    news.date,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondary
                              .withAlpha(100),
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        news.date,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary
                                      .withAlpha(100),
                                ),
                      ),
                      Row(
                        children: [
                          Assets.icons.sendDetails.svg(
                            width: 14.w,
                            height: 14.h,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.onPrimary,
                              BlendMode.srcIn,
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Assets.icons.bookmark.svg(
                            width: 14.w,
                            height: 14.h,
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).colorScheme.onPrimary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
