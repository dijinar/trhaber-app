import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';

import '../../../../core/config/app_router.dart';
import '../../../../core/di/locator.dart';
import '../../../../gen/assets.gen.dart';
import '../../domain/repositories/home_repository.dart';
import '../bloc/top_headline/top_headline_bloc.dart';

class TopHeadlinesSection extends StatelessWidget {
  const TopHeadlinesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TopHeadlineBloc(locator<HomeRepository>())
        ..add(const TopHeadlineEvent.fetch()),
      child: BlocBuilder<TopHeadlineBloc, TopHeadlineState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const CustomShimmer(
              itemCount: 1,
              height: 300,
              lineCount: 0,
            ),
            loaded: (news) {
              if (news.isEmpty) {
                return const SizedBox.shrink();
              }
              return SizedBox(
                height: 225.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: news.length,
                  itemBuilder: (context, index) {
                    final newsItem = news[index];
                    return GestureDetector(
                      onTap: () {
                        context.router.push(
                          NewsDetailRoute(
                            newsId: newsItem.id,
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: index == 0 ? 16.w : 8.w,
                          right: index == news.length - 1 ? 16.w : 0,
                        ),
                        child: Stack(
                          children: [
                            SafeImage(
                              url: newsItem.image,
                              height: 225.h,
                              width: 320.h,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              height: 225.h,
                              width: 320.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withAlpha(200),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                padding: EdgeInsets.all(24.w),
                                width: 320.h,
                                child: Column(
                                  children: [
                                    Text(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      newsItem.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondary,
                                          ),
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text(
                                          newsItem.date,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall
                                              ?.copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary
                                                    .withAlpha(150),
                                              ),
                                        ),
                                        const Spacer(),
                                        Assets.icons.send.svg(
                                          height: 16.r,
                                          colorFilter: ColorFilter.mode(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary
                                                .withAlpha(150),
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Assets.icons.bookmark.svg(
                                          height: 16.r,
                                          colorFilter: ColorFilter.mode(
                                            Theme.of(context)
                                                .colorScheme
                                                .onSecondary
                                                .withAlpha(150),
                                            BlendMode.srcIn,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
