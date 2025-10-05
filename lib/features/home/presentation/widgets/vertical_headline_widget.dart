import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/home/domain/models/category/category_model.dart';
import 'dart:async';

import '../../../../core/config/app_router.dart';
import '../../domain/repositories/home_repository.dart';
import '../bloc/vertical_headline/vertical_headline_bloc.dart';
import '../../../../core/di/locator.dart';

class VerticalHeadlineWidget extends StatelessWidget {
  const VerticalHeadlineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerticalHeadlineBloc(locator<HomeRepository>())
        ..add(const VerticalHeadlineEvent.fetch()),
      child: const _VerticalHeadlineContent(),
    );
  }
}

class _VerticalHeadlineContent extends StatefulWidget {
  const _VerticalHeadlineContent();

  @override
  State<_VerticalHeadlineContent> createState() =>
      _VerticalHeadlineContentState();
}

class _VerticalHeadlineContentState extends State<_VerticalHeadlineContent> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  Timer? _timer;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _startAutoSlide(int length) {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_currentIndex < length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _carouselController.animateToPage(_currentIndex);
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 16),
          _buildCarouselContent(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return const _HeaderWidget();
  }

  Widget _buildCarouselContent() {
    return BlocConsumer<VerticalHeadlineBloc, VerticalHeadlineState>(
      listener: (context, state) {
        state.whenOrNull(
          loaded: (headlines) {
            if (headlines.isNotEmpty) {
              _startAutoSlide(headlines.length);
            }
          },
        );
      },
      builder: (context, state) {
        return state.when(
          initial: () => const _LoadingWidget(),
          loading: () => const _LoadingWidget(),
          loaded: (headlines) => headlines.isEmpty
              ? const _EmptyStateWidget()
              : _buildStackedListView(headlines),
          error: (message) => _ErrorWidget(message: message),
        );
      },
    );
  }

// Arayüzün video haber başlığının altındaki gibi olması için revize edilmiştir.
 Widget _buildStackedListView(List headlines) {
    return SizedBox(
    height: 320.h,  
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: headlines.length,
      itemBuilder: (context, index) {
        final headline = headlines[index];
         return GestureDetector(
          onTap: () {
            context.router.push(NewsDetailRoute(newsId: headline.id));
          },
          child: Container(
            width: 230.w,  
            margin: const EdgeInsets.only(right: 12),  
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                if (headline.image != null && headline.image!.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.network(
                    headline.image!,
                    height: 320.h,
                    fit: BoxFit.fill,
                  ),
                ),
             
              ],
            ),
          ),
        );       
      },
    ),
  );

  }


  Widget _buildBackgroundImageWidget({required dynamic headline}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: headline.image != null
            ? DecorationImage(
                image: NetworkImage(headline.image!),
                fit: BoxFit.fill,
              )
            : null,
        color: headline.image == null ? Colors.grey[300] : null,
      ),
    );
  }
}

// Header Widget
class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Öne Çıkanlar',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        GestureDetector(
          onTap: () {
            context.router.push(
              CategoryNewsRoute(
                  category: CategoryModel(
                      id: "agenda",
                      name: "Gündem",
                      slug: "gundem",
                      color: "#CC0000")),
            );
          },
          child: Text(
            'Tümünü gör',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimary.withAlpha(100),
                ),
          ),
        ),
      ],
    );
  }
}

// Loading Widget
class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.grey[200],
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

// Empty State Widget
class _EmptyStateWidget extends StatelessWidget {
  const _EmptyStateWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.grey[200],
      child: const Center(
        child: Text(
          'Henüz haber bulunmuyor',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}

// Error Widget
class _ErrorWidget extends StatelessWidget {
  final String message;

  const _ErrorWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 48,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'Hata: $message',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

// Category Badge Widget
class _CategoryBadgeWidget extends StatelessWidget {
  const _CategoryBadgeWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Kırmızı nokta
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        // Düz GÜNDEM yazısı
        Text(
          'GÜNDEM',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Colors.white.withAlpha(200),
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

// Title Widget
class _TitleWidget extends StatelessWidget {
  final String title;

  const _TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// Date Widget
class _DateWidget extends StatelessWidget {
  final String date;

  const _DateWidget({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      date,
      style: Theme.of(context).textTheme.displaySmall?.copyWith(
            color: Colors.white.withAlpha(200),
            fontSize: 14,
          ),
    );
  }
}

// Indicators Widget
class _IndicatorsWidget extends StatelessWidget {
  final int currentIndex;
  final int length;

  const _IndicatorsWidget({
    required this.currentIndex,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        length,
        (index) => Container(
          margin: const EdgeInsets.only(right: 8),
          width: currentIndex == index ? 16 : 9,
          height: 4,
          decoration: BoxDecoration(
            color: currentIndex == index
                ? Theme.of(context).colorScheme.onPrimary.withAlpha(200)
                : Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
