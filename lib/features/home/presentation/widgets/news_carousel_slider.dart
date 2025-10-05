import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';

import '../../../../core/config/app_router.dart';
import '../../domain/models/headline/headline_model.dart';

class NewsCarouselSlider extends StatefulWidget {
  final List<HeadlineModel> items;

  const NewsCarouselSlider({super.key, required this.items});

  @override
  State<NewsCarouselSlider> createState() => _NewsCarouselSliderState();
}

class _NewsCarouselSliderState extends State<NewsCarouselSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.items.length,
          options: CarouselOptions(
            height: 229.h,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          itemBuilder: (context, index, _) {
            final item = widget.items[index];
            return GestureDetector(
              onTap: () {
                context.router.push(
                  NewsDetailRoute(
                    newsId: item.id,
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 24.w,
                  height: 229.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: SafeImage(
                      url: item.image,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 12),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.items.asMap().entries.map((entry) {
                final isActive = _currentIndex == entry.key;
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  width: 16.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                    color: isActive ? Colors.blueGrey[800] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(3),
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
