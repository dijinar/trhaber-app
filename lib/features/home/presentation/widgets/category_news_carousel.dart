import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';

import '../../../../core/config/app_router.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/models/category_news/category_news_model.dart';

class CategoryNewsCarousel extends StatelessWidget {
  final List<CategoryNewsModel> topNews;
  final int currentIndex;
  final Color categoryColor;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final PageController pageController = PageController();

  CategoryNewsCarousel({
    Key? key,
    required this.topNews,
    required this.currentIndex,
    required this.categoryColor,
    required this.onPageChanged,
    required this.onPrevious,
    required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (topNews.isEmpty) {
      return const SizedBox();
    }
    return Stack(
      children: [
        SizedBox(
          height: 250.h,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: onPageChanged,
            itemCount: topNews.length,
            itemBuilder: (_, index) {
              final news = topNews[index];
              return GestureDetector(
                onTap: () {
                  context.pushRoute(
                    NewsDetailRoute(
                      newsId: news.id,
                    ),
                  );
                },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 12.w,
                        right: 12.w,
                      ),
                      height: 250.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: categoryColor,
                            width: 8,
                          ),
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(2.r),
                          bottomLeft: Radius.circular(2.r),
                          topRight: Radius.circular(2.r),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(2.r),
                          bottomLeft: Radius.circular(2.r),
                          topRight: Radius.circular(2.r),
                        ),
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            SafeImage(
                              url: news.image,
                              fit: BoxFit.fill,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withAlpha(250),
                                    Theme.of(context)
                                        .colorScheme
                                        .onSecondary
                                        .withAlpha(50),
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 34.w,
                      right: 10,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 260.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 17.r,
                                    vertical: 7.r,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(17.r),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      // flame icon
                                      Assets.icons.flame.svg(
                                        width: 14.w,
                                        height: 14.h,
                                        colorFilter: const ColorFilter.mode(
                                          Colors.white,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        "Öne çıkan",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  maxLines: 4,
                                  news.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary,
                                      ),
                                ),
                                SizedBox(height: 16.h),
                                Text(
                                  news.date,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary
                                            .withAlpha(100),
                                      ),
                                ),
                                const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        Positioned(
          bottom: 16.h,
          right: 16.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Previous
              GestureDetector(
                onTap: () {
                  onPrevious();
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 10.w,
                    right: 15.w,
                    top: 10.h,
                    bottom: 10.h,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Assets.icons.downArrow.svg(
                      width: 14.w,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSecondary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              // Next
              GestureDetector(
                onTap: () {
                  onNext();
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Container(
                  padding: EdgeInsets.only(
                    left: 15.w,
                    right: 10.w,
                    top: 10.h,
                    bottom: 10.h,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Assets.icons.downArrow.svg(
                      width: 14.w,
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onSecondary,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
