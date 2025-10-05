import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/config/app_router.dart';
import 'package:trnews/features/home/domain/models/category_news/category_news_model.dart';
import 'package:trnews/features/home/domain/repositories/home_repository.dart';
import 'package:trnews/features/video_news/presentation/bloc/multimedia/multimedia_bloc.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';
import 'package:trnews/features/video_news/domain/repositories/video_news_repositoriy.dart';

import '../../../../core/di/locator.dart';
import '../../../../gen/assets.gen.dart';
import '../bloc/video_news_bloc/video_news_bloc.dart';

class VideoNewsSection extends StatelessWidget {
  final bool showSeeAllButton;

  const VideoNewsSection({
    super.key,
    this.showSeeAllButton = true,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MultimediaBloc(locator<VideoNewsRepository>())
        ..add(const MultimediaEvent.fetch()),
      child: BlocBuilder<MultimediaBloc, MultimediaState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const CustomShimmer(
              itemCount: 1,
              height: 120,
              lineCount: 3,
            ),
            error: (msg) => Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Hata: $msg"),
            ),
            loaded: (videos) => _VideoNewsList(
                videos: videos, showSeeAllButton: showSeeAllButton),
          );
        },
      ),
    );
  }
}

class _VideoNewsList extends StatelessWidget {
  final List<CategoryNewsModel> videos;
  final bool showSeeAllButton;

  const _VideoNewsList({required this.videos, required this.showSeeAllButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
      child: Column(
        children: [
          if (showSeeAllButton)
            Row(
              children: [
                Assets.icons.video.svg(width: 26, height: 26),
                SizedBox(width: 10.w),
                Text(
                  "Video Haber",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                // GestureDetector(
                //   onTap: () {
                //     // context.router.push(const VideoNewsRoute());
                //   },
                //   child: Padding(
                //     padding:
                //         EdgeInsets.symmetric(horizontal: 8, vertical: 16.h),
                //     child: Text(
                //       "Tümünü Gör",
                //       style: Theme.of(context).textTheme.displayLarge!.copyWith(
                //           fontWeight: FontWeight.bold,
                //           color: Theme.of(context)
                //               .colorScheme
                //               .secondary
                //               .withAlpha(100)),
                //     ),
                //   ),
                // ),
              ],
            ),
          SizedBox(
            height: 230.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // Sadece görseli olan videoları filtreliyoruz
              itemCount: videos
                  .where((v) => v.image != null && v.image!.isNotEmpty)
                  .length,
              itemBuilder: (context, index) {
                // Sadece görseli olan videoları alıyoruz
                final filteredVideos = videos
                    .where((v) => v.image != null && v.image!.isNotEmpty)
                    .toList();
                final video = filteredVideos[index];
                return GestureDetector(
                  onTap: () {
                    context.router.push(NewsDetailRoute(newsId: video.id));
                  },
                  child: Container(
                    width: 120.w,
                    margin: const EdgeInsets.only(right: 12),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        if (video.image != null)
                          ClipRRect(
                            borderRadius: BorderRadius.circular(2),
                            child: Image.network(
                              video.image!,
                              height: 230.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        // const SizedBox(height: 6),
                        // const SizedBox(height: 4),
                        // Padding(
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Row(
                        //     children: [
                        //       Icon(Icons.remove_red_eye,
                        //           size: 14,
                        //           color: Theme.of(context)
                        //               .colorScheme
                        //               .onSecondary),
                        //       const SizedBox(width: 4),
                        //       Text(
                        //         _formatViews(1312),
                        //         style: Theme.of(context)
                        //             .textTheme
                        //             .displaySmall!
                        //             .copyWith(
                        //               fontWeight: FontWeight.bold,
                        //               color: Theme.of(context)
                        //                   .colorScheme
                        //                   .onSecondary,
                        //             ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  static String _formatViews(int count) {
    if (count >= 1000000) return "${(count / 1000000).toStringAsFixed(1)}M";
    if (count >= 1000) return "${(count / 1000).toStringAsFixed(1)}K";
    return count.toString();
  }
}
