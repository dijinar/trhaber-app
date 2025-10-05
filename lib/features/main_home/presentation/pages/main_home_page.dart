import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/main_home/domain/repositories/menu_repository.dart';
import 'package:trnews/features/shared/custom_appbar.dart';
import 'package:trnews/features/shared/widgets/weather_widget.dart';
import 'package:trnews/gen/assets.gen.dart';

import '../../../../core/config/app_router.dart';
import '../../../../core/di/locator.dart';

import '../../../home/domain/models/category/category_model.dart';
import '../bloc/menu_bloc.dart';

@RoutePage()
class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  bool isCollapsed = false;
  bool isDrawerOpen = false;
  bool isDrawerVisible = false;

  void closeDrawer() {
    setState(() {
      isDrawerVisible = false;
    });

    // 300ms sonra görünürlüğü kapat
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        isDrawerOpen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) =>
          MenuBloc(locator<MenuRepository>())..add(const MenuEvent.fetch()),
      child: Scaffold(
        body: Stack(
          children: [
            // Drawer Content (full screen)
            if (isDrawerOpen)
              Positioned.fill(
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: isDrawerVisible ? 1.0 : 0.0,
                  child: _CustomAnimatedDrawer(
                    onClose: closeDrawer,
                  ),
                ),
              ),

            AnimatedPositioned(
              curve: Curves.easeInOutCubic,
              duration: const Duration(milliseconds: 300),
              left: isDrawerOpen ? -screenWidth * 0.7 : 0,
              right: isDrawerOpen ? screenWidth * 0.7 : 0,
              top: isDrawerOpen ? 150 : 0,
              bottom: isDrawerOpen ? 50 : 0,
              child: GestureDetector(
                onTap: () {
                  if (isDrawerOpen) {
                    closeDrawer();
                  }
                },
                child: AnimatedScale(
                  curve: Curves.easeInOutCubic,
                  duration: const Duration(milliseconds: 300),
                  scale: 1,
                  child: AbsorbPointer(
                    absorbing: isDrawerOpen,
                    child: ClipRRect(
                      borderRadius: isDrawerOpen
                          ? BorderRadius.circular(20)
                          : BorderRadius.zero,
                      child: AutoTabsScaffold(
                        appBarBuilder: (context, tabsRouter) {
                          return CustomAppBar(
                            onMenuButtonPressed: () => setState(() {
                              isDrawerOpen = true;
                              isDrawerVisible = true;
                            }),
                            trailingWidget: const WeatherWidget(),
                          );
                        },
                        extendBody: true,
                        backgroundColor: Colors.transparent,
                        routes: [
                          const HomeRoute(),
                          SearchRoute(),
                          const VideosRoute(),
                          const SavedNewsRoute(),
                        ],
                        bottomNavigationBuilder: (context, tabsRouter) {
                          return Stack(
                            children: [
                              AnimatedPositioned(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOutCubic,
                                bottom: 32,
                                right: 16.w,
                                left: isCollapsed ? screenWidth - 86 : 16.w,
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 300),
                                  height: 70.h,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(35),
                                  ),
                                  child: AnimatedSwitcher(
                                    duration: const Duration(milliseconds: 300),
                                    child: isCollapsed
                                        ? Center(
                                            key: const ValueKey('collapsed'),
                                            child: _CustomNavIcon(
                                              icon: _getIconForTab(
                                                  tabsRouter.activeIndex),
                                              index: tabsRouter.activeIndex,
                                              tabsRouter: tabsRouter,
                                              onTap: () => setState(
                                                  () => isCollapsed = false),
                                            ),
                                          )
                                        : Padding(
                                            padding: EdgeInsets.only(
                                                left:
                                                    isDrawerOpen ? 100 : 24.w),
                                            child: Row(
                                              key: const ValueKey('expanded'),
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Expanded(
                                                  child: _CustomNavIcon(
                                                    icon: _getIconForTab(0),
                                                    index: 0,
                                                    tabsRouter: tabsRouter,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: _CustomNavIcon(
                                                    icon: _getIconForTab(1),
                                                    index: 1,
                                                    tabsRouter: tabsRouter,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: _CustomNavIcon(
                                                    icon: _getIconForTab(2),
                                                    index: 2,
                                                    tabsRouter: tabsRouter,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: _CustomNavIcon(
                                                    icon: _getIconForTab(3),
                                                    index: 3,
                                                    tabsRouter: tabsRouter,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: _CustomNavIcon(
                                                    icon: Container(
                                                      padding:
                                                          EdgeInsets.all(8.r),
                                                      decoration: BoxDecoration(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onSecondary
                                                            .withAlpha(100),
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: RotatedBox(
                                                        quarterTurns: 3,
                                                        child: Assets
                                                            .icons.downArrow
                                                            .svg(
                                                          width: 12.w,
                                                          colorFilter:
                                                              ColorFilter.mode(
                                                            Theme.of(context)
                                                                .colorScheme
                                                                .onSecondary,
                                                            BlendMode.srcIn,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    index: 4,
                                                    tabsRouter: tabsRouter,
                                                    onTap: () => setState(() =>
                                                        isCollapsed = true),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getIconForTab(int index) {
    final color = Theme.of(context).colorScheme.onSecondary;

    switch (index) {
      case 0:
        return Assets.icons.house.svg(
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case 1:
        return Assets.icons.searchBar.svg(
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case 2:
        return Assets.icons.video.svg(
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
      case 3:
        return Icon(
          Icons.bookmark,
          size: 32.r,
          color: Theme.of(context).colorScheme.onSecondary,
        );
      default:
        return Assets.icons.house.svg(
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        );
    }
  }
}

class _CustomNavIcon extends StatelessWidget {
  final Widget icon;
  final int index;
  final TabsRouter tabsRouter;
  final bool enabled;
  final VoidCallback? onTap;

  const _CustomNavIcon({
    required this.icon,
    required this.index,
    required this.tabsRouter,
    this.enabled = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = tabsRouter.activeIndex == index;

    return GestureDetector(
      onTap: enabled ? onTap ?? () => tabsRouter.setActiveIndex(index) : null,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            if (isSelected)
              Container(
                margin: EdgeInsets.only(top: 8.h),
                height: 7.h,
                width: 7.w,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _CustomAnimatedDrawer extends StatefulWidget {
  final VoidCallback onClose;

  const _CustomAnimatedDrawer({required this.onClose});

  @override
  State<_CustomAnimatedDrawer> createState() => __CustomAnimatedDrawerState();
}

class __CustomAnimatedDrawerState extends State<_CustomAnimatedDrawer> {
  final TextEditingController _searchController = TextEditingController();

  void _onSearchSubmitted(String value) {
    if (value.trim().isEmpty) return;

    context.router.push(
      SearchRoute(
        keyword: value,
      ),
    );

    debugPrint('Search Submitted: $value');
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: const Color(0xFF0D1B2A),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.onPrimary,
            Theme.of(context).colorScheme.secondaryContainer,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 120.h, left: screenWidth * 0.4, right: 16),
              child: BlocBuilder<MenuBloc, MenuState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loaded: (menuList) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(menuList.length, (index) {
                          final section = menuList[index];
                          final title = section.title;
                          final items = section.items;

                          return Padding(
                            padding: EdgeInsets.only(top: index == 0 ? 0 : 32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary,
                                      ),
                                ),
                                const SizedBox(height: 16),
                                Wrap(
                                  spacing: 12,
                                  runSpacing: 12,
                                  children: items.entries
                                      .toList()
                                      .asMap()
                                      .entries
                                      .map((entryMap) {
                                    final chipIndex = entryMap.key;
                                    final entry = entryMap.value;

                                    final chip = index == 0
                                        ? _buildCategoryChip(
                                            categoryId: entry.value,
                                            entry.key,
                                            chipIndex == 0)
                                        : _buildOutlinedChip(
                                            entry.key,
                                            chipIndex: chipIndex,
                                            index: index,
                                          );

                                    return index == 0
                                        ? GestureDetector(
                                            onTap: () {
                                              final value =
                                                  entry.value.toString();
                                              // yönlendirme burada yapılabilir
                                            },
                                            child: chip,
                                          )
                                        : chip;
                                  }).toList(),
                                ),
                              ],
                            ),
                          );
                        }),
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ),
            Positioned(
              top: 16,
              left: 0,
              right: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.onSecondary,
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        onTap: widget.onClose,
                        child: Icon(
                          size: 20,
                          Icons.close,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Expanded(
                      child: TextFormField(
                        controller: _searchController,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimary
                                .withAlpha(100)),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimary
                                .withAlpha(100),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          hintText: "Dolar kaç lira oldu?",
                          filled: true,
                          fillColor: Theme.of(context).colorScheme.onSecondary,
                        ),
                        onFieldSubmitted: _onSearchSubmitted,
                        textInputAction: TextInputAction.search,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryChip(String title, bool selected,
      {required String categoryId}) {
    {
      return GestureDetector(
        onTap: () {
          context.router.push(CategoryNewsRoute(
            category: CategoryModel(
              id: categoryId,
              name: title,
              slug: title.toLowerCase(),
              color: '#CC0000',
            ),
          ));
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: selected
                ? Theme.of(context).primaryColor
                : Theme.of(context).colorScheme.onSecondary,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: selected
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
  }

  Widget _buildOutlinedChip(String title, {int? index, int? chipIndex}) {
    return GestureDetector(
      onTap: () {
        if (index == 1) {
          if (chipIndex == 0) {
            context.router.push(CategoryNewsRoute(
                category: CategoryModel(
              id: "1",
              name: title,
              slug: title.toLowerCase(),
              color: '#CC0000',
            )));
          } else if (chipIndex == 1) {
            context.router.push(AuthorsRoute(
              isFromHome: true,
            ));
          }
        } else {
          context.router.push(CorporateRoute(
            initiallyExpandedTitle: title,
          ));
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: Theme.of(context).colorScheme.onSecondary.withAlpha(100),
            width: 1,
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary.withAlpha(100),
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
