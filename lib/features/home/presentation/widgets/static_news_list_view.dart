import 'package:flutter/material.dart';
import 'package:trnews/core/extensions/extensions.dart';
import 'package:trnews/features/home/presentation/widgets/category_news_carousel.dart';
import 'package:trnews/features/home/presentation/widgets/category_news_list.dart';
import 'package:trnews/features/home/presentation/widgets/category_title_section.dart';
import 'package:trnews/features/home/presentation/widgets/currency_section.dart';
import 'package:trnews/features/home/presentation/widgets/fixture_section.dart';

import '../../domain/models/category/category_model.dart';
import '../../domain/models/category_news/category_news_model.dart';

class StaticNewsListView extends StatelessWidget {
  final List<CategoryNewsModel> newsList;
  final CategoryModel category;
  final VoidCallback? onSeeAll;
  final int carouselSliderCount;

  const StaticNewsListView({
    super.key,
    required this.newsList,
    required this.category,
    this.onSeeAll,
    this.carouselSliderCount = 7,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CategoryTitleSection(
          categoryId: category.slug,
          categoryName: category.name,
          categoryColor: context.hex(category.color),
          onSeeAll: onSeeAll,
        ),
        CategoryNewsCarousel(
          topNews: newsList.take(carouselSliderCount).toList(),
          currentIndex: 0,
          categoryColor: context.hex(category.color),
          onPageChanged: (_) {},
          onPrevious: () {},
          onNext: () {},
        ),
        const SizedBox(height: 20),
        if (category.slug == "ekonomi") const CurrencySection(),
        const SizedBox(height: 20),
        CategoryNewsList(
          //sonraki 3 habar eğer varsa
          bottomNews:
              newsList.skip(carouselSliderCount).toList().take(3).toList(),
        ),
        if (category.slug == "spor") const FixtureSection(),
        const SizedBox(height: 16),
      ],
    );
  }
}
