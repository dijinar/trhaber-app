// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthorProfileRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthorProfilePage(
          key: args.key,
          author: args.author,
        ),
      );
    },
    AuthorsRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorsRouteArgs>(
          orElse: () => const AuthorsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AuthorsPage(
          key: args.key,
          isFromHome: args.isFromHome,
        ),
      );
    },
    CategoryNewsRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryNewsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CategoryNewsPage(
          key: args.key,
          category: args.category,
        ),
      );
    },
    CorporateRoute.name: (routeData) {
      final args = routeData.argsAs<CorporateRouteArgs>(
          orElse: () => const CorporateRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CorporatePage(
          key: args.key,
          initiallyExpandedTitle: args.initiallyExpandedTitle,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MainHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainHomePage(),
      );
    },
    NewsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsDetailPage(
          key: args.key,
          newsId: args.newsId,
        ),
      );
    },
    SavedNewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SavedNewsPage(),
      );
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>(
          orElse: () => const SearchRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SearchPage(
          key: args.key,
          keyword: args.keyword,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    VideosRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideosPage(),
      );
    },
  };
}

/// generated route for
/// [AuthorProfilePage]
class AuthorProfileRoute extends PageRouteInfo<AuthorProfileRouteArgs> {
  AuthorProfileRoute({
    Key? key,
    required AuthorModel author,
    List<PageRouteInfo>? children,
  }) : super(
          AuthorProfileRoute.name,
          args: AuthorProfileRouteArgs(
            key: key,
            author: author,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthorProfileRoute';

  static const PageInfo<AuthorProfileRouteArgs> page =
      PageInfo<AuthorProfileRouteArgs>(name);
}

class AuthorProfileRouteArgs {
  const AuthorProfileRouteArgs({
    this.key,
    required this.author,
  });

  final Key? key;

  final AuthorModel author;

  @override
  String toString() {
    return 'AuthorProfileRouteArgs{key: $key, author: $author}';
  }
}

/// generated route for
/// [AuthorsPage]
class AuthorsRoute extends PageRouteInfo<AuthorsRouteArgs> {
  AuthorsRoute({
    Key? key,
    bool? isFromHome = false,
    List<PageRouteInfo>? children,
  }) : super(
          AuthorsRoute.name,
          args: AuthorsRouteArgs(
            key: key,
            isFromHome: isFromHome,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthorsRoute';

  static const PageInfo<AuthorsRouteArgs> page =
      PageInfo<AuthorsRouteArgs>(name);
}

class AuthorsRouteArgs {
  const AuthorsRouteArgs({
    this.key,
    this.isFromHome = false,
  });

  final Key? key;

  final bool? isFromHome;

  @override
  String toString() {
    return 'AuthorsRouteArgs{key: $key, isFromHome: $isFromHome}';
  }
}

/// generated route for
/// [CategoryNewsPage]
class CategoryNewsRoute extends PageRouteInfo<CategoryNewsRouteArgs> {
  CategoryNewsRoute({
    Key? key,
    required CategoryModel category,
    List<PageRouteInfo>? children,
  }) : super(
          CategoryNewsRoute.name,
          args: CategoryNewsRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'CategoryNewsRoute';

  static const PageInfo<CategoryNewsRouteArgs> page =
      PageInfo<CategoryNewsRouteArgs>(name);
}

class CategoryNewsRouteArgs {
  const CategoryNewsRouteArgs({
    this.key,
    required this.category,
  });

  final Key? key;

  final CategoryModel category;

  @override
  String toString() {
    return 'CategoryNewsRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [CorporatePage]
class CorporateRoute extends PageRouteInfo<CorporateRouteArgs> {
  CorporateRoute({
    Key? key,
    String? initiallyExpandedTitle,
    List<PageRouteInfo>? children,
  }) : super(
          CorporateRoute.name,
          args: CorporateRouteArgs(
            key: key,
            initiallyExpandedTitle: initiallyExpandedTitle,
          ),
          initialChildren: children,
        );

  static const String name = 'CorporateRoute';

  static const PageInfo<CorporateRouteArgs> page =
      PageInfo<CorporateRouteArgs>(name);
}

class CorporateRouteArgs {
  const CorporateRouteArgs({
    this.key,
    this.initiallyExpandedTitle,
  });

  final Key? key;

  final String? initiallyExpandedTitle;

  @override
  String toString() {
    return 'CorporateRouteArgs{key: $key, initiallyExpandedTitle: $initiallyExpandedTitle}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainHomePage]
class MainHomeRoute extends PageRouteInfo<void> {
  const MainHomeRoute({List<PageRouteInfo>? children})
      : super(
          MainHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsDetailPage]
class NewsDetailRoute extends PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({
    Key? key,
    required String newsId,
    List<PageRouteInfo>? children,
  }) : super(
          NewsDetailRoute.name,
          args: NewsDetailRouteArgs(
            key: key,
            newsId: newsId,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailRoute';

  static const PageInfo<NewsDetailRouteArgs> page =
      PageInfo<NewsDetailRouteArgs>(name);
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({
    this.key,
    required this.newsId,
  });

  final Key? key;

  final String newsId;

  @override
  String toString() {
    return 'NewsDetailRouteArgs{key: $key, newsId: $newsId}';
  }
}

/// generated route for
/// [SavedNewsPage]
class SavedNewsRoute extends PageRouteInfo<void> {
  const SavedNewsRoute({List<PageRouteInfo>? children})
      : super(
          SavedNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedNewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    String? keyword,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            keyword: keyword,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<SearchRouteArgs> page = PageInfo<SearchRouteArgs>(name);
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    this.keyword,
  });

  final Key? key;

  final String? keyword;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, keyword: $keyword}';
  }
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideosPage]
class VideosRoute extends PageRouteInfo<void> {
  const VideosRoute({List<PageRouteInfo>? children})
      : super(
          VideosRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideosRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
