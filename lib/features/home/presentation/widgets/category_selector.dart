import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/home/domain/models/category/category_model.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';

import '../../../../core/config/app_router.dart';
import '../bloc/category/category_bloc.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CustomShimmer(
            itemCount: 1,
            height: 36,
            lineCount: 1,
          ),
          loaded: (categories, _) {
            final totalCount = categories.length + 1;

            return SizedBox(
              height: 36,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 12.w),
                itemCount: totalCount,
                separatorBuilder: (_, __) => const SizedBox(width: 9),
                itemBuilder: (context, index) {
                  // Baştaki kırmızı - Son Dakika
                  if (index == 0) {
                    return GestureDetector(
                      onTap: () {
                        context.router.push(CategoryNewsRoute(
                            category: const CategoryModel(
                          id: "breakingNews",
                          name: "Son Dakika",
                          slug: "son dakika",
                          color: "#CC0000",
                        )));
                      },
                      child: Container(
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: Center(
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            'Son Dakika',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                          ),
                        ),
                      ),
                    );
                  }

                  final category = categories[index - 1];

                  return GestureDetector(
                    onTap: () {
                      context.router.push(
                        CategoryNewsRoute(category: category),
                      );
                    },
                    child: Container(
                      width: 105,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Center(
                        child: Text(
                          category.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          error: (message) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 8.h),
                ElevatedButton(
                  onPressed: () {
                    context.router.replace(const SplashRoute());
                  },
                  child: const Text('Tekrar Dene'),
                ),
              ],
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
