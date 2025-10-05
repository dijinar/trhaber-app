import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:trnews/features/main_home/presentation/pages/main_home_page.dart';
import 'package:trnews/features/video_news/presentation/pages/videos_page.dart';
import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/authors/domain/models/author_model/author_model.dart';
import '../../features/authors/presentation/pages/author_profile_page.dart';
import '../../features/authors/presentation/pages/authors_page.dart';
import '../../features/corporate/presentation/pages/corporate_page.dart';
import '../../features/home/domain/models/category/category_model.dart';
import '../../features/home/presentation/pages/category_news_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/news_detail/presentation/pages/news_detail_page.dart';
import '../../features/saved_news/presentation/pages/saved_news_page.dart';
import '../../features/search/presentation/pages/serach_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// 🚀 Splash başlangıç noktası
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
          path: '/',
        ),

        /// 🏠 Ana sayfa tab yapısı
        AutoRoute(
          page: MainHomeRoute.page,
          path: '/home',
          children: [
            AutoRoute(page: HomeRoute.page, path: ''),
            AutoRoute(page: SearchRoute.page, path: 'search'),
            AutoRoute(page: VideosRoute.page, path: 'videos'),
            AutoRoute(page: SavedNewsRoute.page, path: 'saved-news'),
          ],
        ),

        /// Diğer sayfalar
        AutoRoute(page: AuthorsRoute.page, path: '/authors'),
        AutoRoute(page: AuthorProfileRoute.page, path: '/author-profile'),
        AutoRoute(page: NewsDetailRoute.page, path: '/news-detail'),
        AutoRoute(page: CorporateRoute.page, path: '/corporate'),
        AutoRoute(page: CategoryNewsRoute.page, path: '/category-news'),
        AutoRoute(page: SearchRoute.page, path: '/search'),
      ];
}
