import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/extensions/extensions.dart';
import 'package:trnews/features/home/domain/models/category/category_model.dart';
import 'package:trnews/features/shared/custom_appbar.dart';
import 'package:trnews/features/shared/widgets/weather_widget.dart';

import '../../../../core/di/locator.dart';
import '../../domain/repositories/home_repository.dart';
import '../bloc/breaking_news/breaking_news_bloc.dart';
import '../bloc/vertical_headline/vertical_headline_bloc.dart';
import '../widgets/category_news_carousel.dart';
import '../widgets/category_news_list.dart';
import '../widgets/category_news_section.dart';
import '../widgets/category_title_section.dart';

@RoutePage()
class CategoryNewsPage extends StatelessWidget {
  final CategoryModel category;
  const CategoryNewsPage({super.key, required this.category});

  bool get isBreakingNews => category.id == "breakingNews";
  bool get isAgenda => category.id == "agenda";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        trailingWidget: WeatherWidget(),
        showBackButton: true,
        showMenuButton: false,
      ),
      body: Column(
        children: [
          if (isBreakingNews)
            _BreakingNewsSection(
              categoryId: category.slug,
            )
          else if (isAgenda)
            _AgendaVerticalHeadlineSection(
              categoryId: category.slug,
            )
          else
            CategoryNewsSection(
              category: category,
              isInfiniteScroll: true,
            ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}

class _BreakingNewsSection extends StatelessWidget {
  final String categoryId;

  const _BreakingNewsSection({
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BreakingNewsBloc(locator<HomeRepository>())
        ..add(const BreakingNewsEvent.fetch()),
      child: BlocBuilder<BreakingNewsBloc, BreakingNewsState>(
        builder: (context, newsState) {
          return newsState.maybeWhen(
            loaded: (newsList) {
              if (newsList.isEmpty) return const SizedBox();

              final bottomNews = newsList.length >= 3
                  ? newsList.sublist(newsList.length - 3)
                  : newsList;

              // Kırmızı renk hex: "CC0000"
              final categoryColor = context.hex("#CC0000");

              return Expanded(
                child: ListView(
                  children: [
                    CategoryTitleSection(
                      categoryId: categoryId,
                      categoryName: "Son Dakika",
                      categoryColor: categoryColor,
                    ),
                    CategoryNewsCarousel(
                      topNews: newsList,
                      currentIndex: 0,
                      categoryColor: categoryColor,
                      onPageChanged: (_) {},
                      onPrevious: () {},
                      onNext: () {},
                    ),
                    const SizedBox(height: 20),
                    CategoryNewsList(bottomNews: bottomNews),
                  ],
                ),
              );
            },
            orElse: () => const Padding(
              padding: EdgeInsets.all(24),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }
}

class _AgendaVerticalHeadlineSection extends StatelessWidget {
  final String categoryId;

  const _AgendaVerticalHeadlineSection({
    required this.categoryId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerticalHeadlineBloc(locator<HomeRepository>())
        ..add(const VerticalHeadlineEvent.fetch()),
      child: BlocBuilder<VerticalHeadlineBloc, VerticalHeadlineState>(
        builder: (context, newsState) {
          return newsState.maybeWhen(
            loaded: (newsList) {
              if (newsList.isEmpty) return const SizedBox();

              final bottomNews = newsList.length >= 3
                  ? newsList.sublist(newsList.length - 3)
                  : newsList;

              // Mavi renk hex: "4A90E2" (Vertical Headline rengi)
              final categoryColor = Theme.of(context).colorScheme.primary;

              return Expanded(
                child: ListView(
                  children: [
                    CategoryTitleSection(
                      categoryId: categoryId,
                      categoryName: "Öne Çıkanlar",
                      categoryColor: categoryColor,
                    ),
                    CategoryNewsCarousel(
                      topNews: newsList,
                      currentIndex: 0,
                      categoryColor: categoryColor,
                      onPageChanged: (_) {},
                      onPrevious: () {},
                      onNext: () {},
                    ),
                    const SizedBox(height: 20),
                    CategoryNewsList(bottomNews: bottomNews),
                  ],
                ),
              );
            },
            orElse: () => const Padding(
              padding: EdgeInsets.all(24),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        },
      ),
    );
  }
}
