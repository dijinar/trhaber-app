import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/home/presentation/widgets/currency_section.dart';
import 'package:trnews/features/home/presentation/widgets/vertical_headline_widget.dart';
import 'package:trnews/features/home/presentation/widgets/video_news_section.dart';

import '../../../../core/di/locator.dart';
import '../../domain/repositories/home_repository.dart';
import '../bloc/category/category_bloc.dart';
import '../widgets/category_selector.dart';
import '../widgets/featured_categories_section.dart';
import '../widgets/headline_list_section.dart';
import '../widgets/infographic_section.dart';
import '../widgets/tag_section.dart';
import '../widgets/top_headlines_section.dart';
import '../widgets/what_happened_section.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Key _pageKey = UniqueKey();
  late ScrollController _scrollController;
  bool _showScrollToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset >= 600) {
      // Tam bir sayfa kadar scroll
      if (!_showScrollToTopButton) {
        setState(() {
          _showScrollToTopButton = true;
        });
      }
    } else {
      if (_showScrollToTopButton) {
        setState(() {
          _showScrollToTopButton = false;
        });
      }
    }
  }

  void _resetPage() {
    setState(() {
      _pageKey = UniqueKey();
    });
  }

  void scrollToTop() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _pageKey,
      child: BlocProvider(
        create: (_) => CategoryBloc(locator<HomeRepository>())
          ..add(const CategoryEvent.fetch()),
        child: Scaffold(
          body: Stack(
            children: [
              RefreshIndicator(
                onRefresh: () async {
                  _resetPage();
                  await Future.delayed(const Duration(milliseconds: 300));
                },
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      CategorySelector(),
                      SizedBox(height: 16),
                      HeadlineListSection(),
                      CurrencySection(showConvererter: false),
                      TopHeadlinesSection(),
                      SizedBox(height: 16),
                      VideoNewsSection(),
                      SizedBox(height: 3),
                      WhatHappenedSection(),
                      TagSection(),
                      SizedBox(height: 16),
                      FeaturedCategoriesSection(),
                      SizedBox(height: 32),
                      VerticalHeadlineWidget(),
                      SizedBox(height: 16),
                      InfographicSection(),
                    ],
                  ),
                ),
              ),
              // Scroll to top button - navigation bar'ın üstünde
              if (_showScrollToTopButton)
                Positioned(
                  bottom: 120.h, // Navigation bar'ın üstünde
                  right: 16.w,
                  child: AnimatedSlide(
                    duration: const Duration(milliseconds: 300),
                    offset: _showScrollToTopButton
                        ? Offset.zero
                        : const Offset(0, 1),
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity:
                          _showScrollToTopButton ? 0.7 : 0.0, // Yarı saydam
                      child: Container(
                        width: 48.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                          color: Colors.black
                              .withOpacity(0.6), // Siyah yarı saydam
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: scrollToTop,
                            borderRadius: BorderRadius.circular(24.r),
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              color: Colors.white
                                  .withOpacity(0.9), // Beyaz yarı saydam
                              size: 22.r,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
