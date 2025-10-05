import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/extensions/extensions.dart';
import 'package:trnews/features/home/presentation/widgets/currency_section.dart';
import 'package:trnews/features/home/presentation/widgets/fixture_section.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';

import '../../../../core/di/locator.dart';
import '../../domain/models/category/category_model.dart';
import '../../domain/models/category_news/category_news_model.dart';
import '../../domain/repositories/home_repository.dart';
import '../bloc/category_news/category_news_bloc.dart';
import 'category_news_carousel.dart';
import 'category_news_list.dart';
import 'category_title_section.dart';
import 'static_news_list_view.dart';

class CategoryNewsSection extends StatefulWidget {
  final CategoryModel category;
  final VoidCallback? onSeeAll;
  final bool isInfiniteScroll; // NEW

  const CategoryNewsSection({
    super.key,
    required this.category,
    this.onSeeAll,
    this.isInfiniteScroll = false, // Default: false
  });

  @override
  State<CategoryNewsSection> createState() => _CategoryNewsSectionState();
}

class _CategoryNewsSectionState extends State<CategoryNewsSection> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CategoryNewsBloc(locator<HomeRepository>())
        ..add(CategoryNewsEvent.fetch(widget.category.id)),
      child: BlocBuilder<CategoryNewsBloc, CategoryNewsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const _LoadingView(),
            loaded: (usedCategory, newsList, _, __) {
              if (usedCategory.id != widget.category.id || newsList.isEmpty) {
                return const SizedBox.shrink();
              }

              // Modüler olarak listeyi çiziyoruz
              if (widget.isInfiniteScroll) {
                return _InfiniteScrollListView(
                  newsList: newsList,
                  category: usedCategory,
                  onSeeAll: widget.onSeeAll,
                );
              } else {
                return StaticNewsListView(
                  newsList: newsList,
                  category: usedCategory,
                  onSeeAll: widget.onSeeAll,
                );
              }
            },
            orElse: () => const _LoadingView(),
          );
        },
      ),
    );
  }
}

class _InfiniteScrollListView extends StatefulWidget {
  final List<CategoryNewsModel> newsList;
  final CategoryModel category;
  final VoidCallback? onSeeAll;

  const _InfiniteScrollListView({
    required this.newsList,
    required this.category,
    this.onSeeAll,
  });

  @override
  State<_InfiniteScrollListView> createState() =>
      _InfiniteScrollListViewState();
}

class _InfiniteScrollListViewState extends State<_InfiniteScrollListView> {
  late final ScrollController _scrollController;
  bool _isFetchingMore = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 100 &&
        !_isFetchingMore &&
        !_isLastPage()) {
      _isFetchingMore = true;
      print('🎯 Scroll sonuna yaklaşıldı — yükleme tetikleniyor...');
      context.read<CategoryNewsBloc>().add(
            LoadMoreCategoryNews(widget.category.id),
          );
    }
  }

  bool _isLastPage() {
    final state = context.read<CategoryNewsBloc>().state;
    return state is CategoryNewsLoaded && state.isLastPage;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CategoryNewsBloc, CategoryNewsState>(
      listener: (context, state) {
        if (state is CategoryNewsLoaded) {
          _isFetchingMore = false;
        }
      },
      child: Expanded(
        child: ListView(
          controller: _scrollController,
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            CategoryTitleSection(
              categoryId: widget.category.slug,
              categoryName: widget.category.name,
              categoryColor: context.hex(widget.category.color),
              onSeeAll: widget.onSeeAll,
            ),
            CategoryNewsCarousel(
              topNews: widget.newsList.take(5).toList(),
              currentIndex: 0,
              categoryColor: context.hex(widget.category.color),
              onPageChanged: (_) {},
              onPrevious: () {},
              onNext: () {},
            ),
            const SizedBox(height: 20),
            if (widget.category.slug == "ekonomi") const CurrencySection(),
            if (widget.category.slug == "spor")
              const FixtureSection(
                isFull: true,
              ),
            const SizedBox(height: 20),
            CategoryNewsList(bottomNews: widget.newsList.skip(5).toList()),
            const SizedBox(height: 32),
            if (!_isLastPage())
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator()),
              ),
          ],
        ),
      ),
    );
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 200,
      child: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            CustomShimmer(itemCount: 1, height: 300, lineCount: 1),
            SizedBox(height: 20),
            CustomShimmer(
              itemCount: 3,
              height: 500,
              lineCount: 8,
              spacing: 16,
              lineSpacing: 8,
            ),
          ],
        ),
      ),
    );
  }
}
