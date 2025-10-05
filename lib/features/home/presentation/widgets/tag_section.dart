import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';

import '../../../../core/config/app_router.dart';
import '../../../../core/di/locator.dart';
import '../../domain/repositories/home_repository.dart';
import '../bloc/tag/tag_bloc.dart';

class TagSection extends StatelessWidget {
  const TagSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          TagBloc(locator<HomeRepository>())..add(const TagEvent.fetch()),
      child: BlocBuilder<TagBloc, TagState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const CustomShimmer(
              itemCount: 1,
              height: 500,
              lineCount: 1,
            ),
            loaded: (tags, tagNews, selectedId) {
              final currentNews = tagNews[selectedId] ?? [];

              return Container(
                padding: EdgeInsets.only(
                    top: 47.h, bottom: 66.h, left: 12.w, right: 12.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.secondaryContainer
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2.r),
                          topRight: Radius.circular(2.r),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedId,
                          dropdownColor: Theme.of(context).colorScheme.primary,
                          icon: const Icon(Icons.keyboard_arrow_down_rounded,
                              color: Colors.white),
                          items: tags
                              .map((tag) => DropdownMenuItem<String>(
                                    value: tag.id,
                                    child: Text(
                                      tag.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            if (value != null) {
                              context
                                  .read<TagBloc>()
                                  .add(TagEvent.select(value));
                            }
                          },
                        ),
                      ),
                    ),
                    ...currentNews.mapIndexed((i, news) {
                      return GestureDetector(
                        onTap: () {
                          context.router.push(
                            NewsDetailRoute(
                              newsId: news.id,
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(
                              bottom: i != currentNews.length - 1 ? 16.h : 0),
                          margin: EdgeInsets.only(right: 12.w),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 4.w,
                              ),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Image
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(2.r),
                                      bottomLeft: Radius.circular(2.r),
                                      bottomRight: Radius.circular(2.r),
                                    ),
                                    child: SafeImage(
                                      width: 180.w,
                                      height: 155.h,
                                      url: news.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  //gradient
                                  Container(
                                    width: 180.w,
                                    height: 155.h,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.transparent,
                                          Theme.of(context)
                                              .colorScheme
                                              .onPrimary
                                              .withAlpha(200),
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 12.w),
                              // Title & Date
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      news.title,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      news.date,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary
                                                .withAlpha(100),
                                          ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
