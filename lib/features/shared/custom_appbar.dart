import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/config/app_router.dart';
import 'package:trnews/features/shared/widgets/custom_icon_button.dart';
import 'package:trnews/features/shared/widgets/logo.dart';
import 'package:trnews/gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final bool showBackButton;
  final bool showMenuButton;
  final Widget? trailingWidget;
  final void Function()? onBackButtonPressed;
  final void Function()? onMenuButtonPressed;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.showBackButton = false,
    this.showMenuButton = true,
    this.trailingWidget,
    this.onBackButtonPressed,
    this.onMenuButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      title: title != null ? Text(title!) : null,
      leadingWidth: showBackButton ? 300 : 200,
      leading: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 12.w),
          if (showBackButton)
            CustomIconButton(
              size: 48.r,
              icon: RotatedBox(
                  quarterTurns: 1,
                  child: Assets.icons.downArrow.svg(
                    height: 12.r,
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.onPrimary,
                        BlendMode.srcIn),
                  )),
              backgroundColor:
                  Theme.of(context).colorScheme.onPrimary.withAlpha(15),
              onPressed: ()    {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  context.router.replace(const MainHomeRoute());
                }
              } 
            ),
          if (showBackButton) const SizedBox(width: 16),
          if (showBackButton)
            SizedBox(
              height: 28.h,
              child: VerticalDivider(
                color: Theme.of(context).colorScheme.onPrimary.withAlpha(50),
                width: 1,
                thickness: 1,
              ),
            ),
          if (showBackButton) const SizedBox(width: 16),
          GestureDetector(
            onTap: () {
              if (kDebugMode) {
                print("Logo clicked");
              }
              try {
                // Try to find the TabsRouter safely
                final tabsRouter = context.tabsRouter;

                if (tabsRouter.activeIndex != 0) {
                  if (kDebugMode) {
                    print("Navigating to the first tab");
                  }
                  tabsRouter.setActiveIndex(0);
                } else {
                  if (kDebugMode) {
                    print("Already on the first tab, no action needed");
                  }
                }
              } catch (e) {
                if (kDebugMode) {
                  print("No TabsRouter found, falling back to navigation: $e");
                }
                // Fall back to the original behavior when TabsRouter is unavailable
                Navigator.popUntil(context, (route) => route.isFirst);
              }
            },
            child: const Logo(
              height: 75,
            ),
          )
        ],
      ),
      actions: [
        if (trailingWidget != null) trailingWidget!,
        if (showMenuButton)
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => onMenuButtonPressed != null
                ? onMenuButtonPressed!()
                : Scaffold.of(context).openEndDrawer(),
          ),
        if (actions != null) ...actions!,
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(80); // Set the preferred height of the AppBar
}
