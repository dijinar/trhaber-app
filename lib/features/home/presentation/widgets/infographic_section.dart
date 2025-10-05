import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/di/locator.dart';
import 'package:trnews/features/home/domain/models/category_news/category_news_model.dart';
import 'package:trnews/features/home/domain/repositories/home_repository.dart';
import 'package:trnews/features/home/presentation/bloc/infographic_bloc/infographic_bloc.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';
import 'package:photo_view/photo_view.dart';
import 'dart:ui';
import 'package:auto_route/auto_route.dart';
import 'package:trnews/core/config/app_router.dart';

import 'package:trnews/gen/assets.gen.dart'; // For ImageFilter.blur

class InfographicSection extends StatelessWidget {
  const InfographicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InfographicBloc(locator<HomeRepository>())
        ..add(const InfographicEvent.fetch()),
      child: BlocBuilder<InfographicBloc, InfographicState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const CustomShimmer(
              itemCount: 1,
              height: 180, // Adjusted height for infographic
              lineCount: 1, // Single line shimmer for horizontal list
            ),
            error: (msg) => Padding(
              padding: const EdgeInsets.all(16),
              child: Text("Hata: $msg"),
            ),
            loaded: (infographics) {
              if (infographics.isEmpty) {
                return const SizedBox.shrink();
              }
              return _InfographicList(infographics: infographics);
            },
          );
        },
      ),
    );
  }
}

class _InfographicList extends StatelessWidget {
  final List<CategoryNewsModel> infographics;

  const _InfographicList({required this.infographics});

  void _showPhotoView(BuildContext context, String imageUrl, String imageId) {
    showDialog(
      barrierDismissible: true, // Allow dismissing by tapping outside
      context: context,
      barrierColor: Colors.black.withOpacity(0.3), // Semi-transparent overlay
      builder: (BuildContext dialogContext) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Dialog(
            backgroundColor: Colors.transparent,
            elevation: 0,
            insetPadding:
                EdgeInsets.all(10.w), // Padding around the dialog content
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  // Clip PhotoView for rounded corners if desired
                  borderRadius: BorderRadius.circular(12.r),
                  child: PhotoView(
                    imageProvider: NetworkImage(imageUrl),
                    heroAttributes: PhotoViewHeroAttributes(tag: imageId),
                    minScale: PhotoViewComputedScale.contained * 0.9,
                    maxScale: PhotoViewComputedScale.covered * 2.5,
                    backgroundDecoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    loadingBuilder: (context, event) => const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: 15.h,
                  right: 15.w,
                  child: Material(
                    // Material for InkWell splash
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30.r),
                      onTap: () {
                        Navigator.of(dialogContext).pop();
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.w),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child:
                            Icon(Icons.close, color: Colors.white, size: 24.w),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Increased height for the entire section to prevent overflow
    // Accommodates title, spacing, and the 280.h image row
    final double sectionHeight = 650.h; // Adjusted height

    return Container(
      height: sectionHeight,
      width: double.infinity, // Full width of the parent

      child: Stack(
        alignment: Alignment.center, // Align children to the top left
        children: [
          // Background Gradient Container
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFCDD8DE), // New color 1
                    Color(0xFFFAFBFD), // New color 2
                    Color(0xFFFBFBFB), // New color 3
                    Color.fromARGB(255, 180, 180, 180), // New color 4
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Title
          Positioned(
            top: 8.h, // Position from the top

            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w), // Padding around the icon
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withAlpha(100),
                      width: 4.w, // Border width
                    ),
                    borderRadius: BorderRadius.circular(8.r), // Circular border
                  ),
                  child: Icon(
                    Icons.question_mark_sharp,
                    size: 32.w, // Icon size
                    color: Theme.of(context)
                        .scaffoldBackgroundColor
                        .withAlpha(100),
                  ),
                ),
                SizedBox(width: 8.w), // Spacing between icon and text
                Text(
                  "İnfografik",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context)
                            .scaffoldBackgroundColor
                            .withAlpha(100),
                        fontWeight: FontWeight.bold,
                        fontSize: 66.sp, // Adjusted font size
                      ),
                ),
              ],
            ),
          ),
          // Scrollable Image Row
          Positioned(
            top: 120.h, // Position below the title area
            left: 0,
            right: 0,
            // bottom: 20.h, // Alt sınır ekleyerek esnek yükseklik sağlıyoruz
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                  horizontal: 12.w), // Padding for the row itself
              child: Row(
                children: infographics.map((infographic) {
                  if (infographic.image == null || infographic.image!.isEmpty) {
                    return const SizedBox.shrink(); // Skip empty images
                  }
                  final String heroTag = "infographic_zoom_${infographic.id}";

                  return Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(50),
                          blurRadius: 6,
                          offset: const Offset(3, 3),
                        ),
                      ],
                    ),
                    // Sabit genişlik, esnek yükseklik
                    width: 280.w,
                    constraints: BoxConstraints(
                      minHeight: 100.h,
                      maxHeight: 400.h,
                    ),
                    margin: EdgeInsets.only(right: 10.w),
                    child: Stack(
                      // Use Stack to overlay the icon
                      alignment: Alignment.center,
                      children: [
                        // Image part
                        GestureDetector(
                          onTap: () {
                            // Haber detay sayfasına yönlendirme
                            context.router
                                .push(NewsDetailRoute(newsId: infographic.id));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.surface,
                                width: 2.w, // Border width
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Image.network(
                                infographic.image!,
                                fit: BoxFit.contain,
                                loadingBuilder: (BuildContext context,
                                    Widget child,
                                    ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) =>
                                    Container(
                                  color: Colors.grey[300],
                                  alignment: Alignment.center,
                                  child: Icon(Icons.broken_image,
                                      size: 50, color: Colors.grey[600]),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Zoom Icon
                        Positioned(
                          bottom: 24.h,
                          right: 24.w,
                          child: GestureDetector(
                            onTap: () {
                              _showPhotoView(
                                  context, infographic.image!, heroTag);
                            },
                            child: Container(
                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary, // Changed background to primary color
                                borderRadius: BorderRadius.circular(11.r),
                              ),
                              child: Assets.icons.searchPlusSvgrepoCom.svg(
                                width: 32.w,
                                height: 32.h,
                                colorFilter: ColorFilter.mode(
                                  Theme.of(context)
                                      .colorScheme
                                      .surface, // Changed icon color to onPrimary
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
