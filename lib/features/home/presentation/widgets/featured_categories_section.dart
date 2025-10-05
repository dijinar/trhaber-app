import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';

import '../../../../core/config/app_router.dart';
import '../../../../core/constants/constants.dart';
import '../bloc/category/category_bloc.dart';
import 'category_news_section.dart';

class FeaturedCategoriesSection extends StatelessWidget {
  const FeaturedCategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CustomShimmer(
            itemCount: 4,
            height: 700,
            lineCount: 3,
          ),
          loaded: (categories, _) {
            final featuredCategories = categories
                .where((cat) => featuredCategorySlugs.contains(cat.slug))
                .toList();

            return Column(
              children: featuredCategories.map((category) {
                return CategoryNewsSection(
                  category: category,
                  onSeeAll: () {
                    context.pushRoute(CategoryNewsRoute(category: category));
                  },
                );
              }).toList(),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
