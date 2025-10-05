import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';

import '../../../../core/config/app_router.dart';
import '../../../../core/di/locator.dart';
import '../../../../gen/assets.gen.dart';
import '../../../shared/presentation/bloc/what_happend/what_happened_bloc.dart';

class WhatHappenedSection extends StatelessWidget {
  const WhatHappenedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          WhatHappenedBloc(locator())..add(const WhatHappenedEvent.fetch()),
      child: BlocBuilder<WhatHappenedBloc, WhatHappenedState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const CustomShimmer(
              itemCount: 1,
              height: 350,
              lineCount: 1,
            ),
            loaded: (newsList) => Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).primaryColorDark
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    child: Row(
                      children: [
                        Assets.icons.question.svg(
                          height: 24.r,
                          colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.onSecondary,
                            BlendMode.srcIn,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "Neler Oldu?",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(
                    height: 270.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: newsList.length,
                      itemBuilder: (context, index) {
                        final item = newsList[index];
                        const double aspectRatio = 299 / 486;
                        final double width = 270.h * aspectRatio;
                        return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0 ? 16.w : 8.w, right: 8.w),
                          child: GestureDetector(
                            onTap: () {
                              context.router.push(
                                NewsDetailRoute(
                                  newsId: item.id,
                                ),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Stack(
                                children: [
                                  SafeImage(
                                    url: item.image,
                                    width: width,
                                    height: 270.h,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(newsList.length, (index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 4.w),
                          width: 12.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.onSecondary,
                            borderRadius: BorderRadius.circular(4.r),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
