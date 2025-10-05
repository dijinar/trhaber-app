import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/widgets/news_card.dart';
import '../../domain/models/category_news/category_news_model.dart';

class CategoryNewsList extends StatelessWidget {
  final List<CategoryNewsModel> bottomNews;

  const CategoryNewsList({
    Key? key,
    required this.bottomNews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
      ),
      child: Column(
        children: List.generate(bottomNews.length, (index) {
          final news = bottomNews[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: NewsCard(news: news),
          );
        }),
      ),
    );
  }
}
