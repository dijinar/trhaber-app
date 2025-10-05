import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:trnews/core/di/locator.dart';
import 'package:trnews/features/corporate/presentation/bloc/corporate_bloc.dart';
import 'package:trnews/features/shared/custom_appbar.dart';
import 'package:trnews/features/shared/widgets/weather_widget.dart';

@RoutePage()
class CorporatePage extends StatelessWidget {
  final String? initiallyExpandedTitle;

  const CorporatePage({super.key, this.initiallyExpandedTitle});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          CorporateBloc(locator())..add(const CorporateEvent.fetch()),
      child: _CorporateView(initiallyExpandedTitle: initiallyExpandedTitle),
    );
  }
}

class _CorporateView extends StatefulWidget {
  final String? initiallyExpandedTitle;

  const _CorporateView({super.key, this.initiallyExpandedTitle});

  @override
  State<_CorporateView> createState() => _CorporateViewState();
}

class _CorporateViewState extends State<_CorporateView> {
  int _expandedIndex = 0;
  bool _hasInitializedExpandedIndex = false;

  void _setExpanded(int index) {
    setState(() {
      _expandedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(
        trailingWidget: WeatherWidget(),
        showMenuButton: false,
        showBackButton: true,
      ),
      body: BlocBuilder<CorporateBloc, CorporateState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            failure: (msg) => Center(child: Text("Hata: $msg")),
            success: (dataList) {
              if (!_hasInitializedExpandedIndex) {
                final initialIndex = widget.initiallyExpandedTitle != null
                    ? dataList.indexWhere(
                        (e) => e.title == widget.initiallyExpandedTitle)
                    : 0;

                WidgetsBinding.instance.addPostFrameCallback((_) {
                  setState(() {
                    _expandedIndex = initialIndex;
                    _hasInitializedExpandedIndex = true;
                  });
                });
              }
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28.r),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        final item = dataList[index];
                        return CorporateSectionCard(
                          index: index,
                          expandedIndex: _expandedIndex,
                          onExpand: _setExpanded,
                          title: item.title,
                          backgroundColor: item.title == "İletişim"
                              ? theme.secondaryHeaderColor
                              : theme.colorScheme.primary,
                          content: item.content,
                        );
                      },
                      itemCount: dataList.length,
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CorporateSectionCard extends StatelessWidget {
  final int index;
  final int expandedIndex;
  final void Function(int) onExpand;
  final String title;
  final Color backgroundColor;
  final bool alwaysExpanded;
  final String content;

  const CorporateSectionCard({
    super.key,
    required this.index,
    required this.expandedIndex,
    required this.onExpand,
    required this.title,
    required this.backgroundColor,
    this.alwaysExpanded = false,
    required this.content,
  });

  bool get isExpanded => alwaysExpanded || index == expandedIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //arka plan container
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                color: expandedIndex + 1 == index
                    ? Theme.of(context).scaffoldBackgroundColor
                    : Theme.of(context).colorScheme.primary,
                borderRadius: index == 0
                    ? BorderRadius.only(
                        topLeft: Radius.circular(28.r),
                        topRight: Radius.circular(28.r),
                      )
                    : null),
          ),
        ),
        Column(
          children: [
            // Başlık Container
            GestureDetector(
              onTap: () {
                //hem aç hem kapat
                if (isExpanded) {
                  onExpand(-1);
                } else {
                  onExpand(index);
                }
              },
              child: Container(
                height: 70.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  //sadece üst traafa ince border
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(30),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: const Offset(0, -4), // 🔥 YUKARI GÖLGE!
                    ),
                  ],

                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.r),
                    topRight: Radius.circular(28.r),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "•   $title",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                  ],
                ),
              ),
            ),
            if (isExpanded)
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: title == "İletişim"
                        ? backgroundColor
                        : Theme.of(context).colorScheme.background,
                    borderRadius: title == "İletişim"
                        ? null
                        : BorderRadius.only(
                            topLeft: Radius.circular(28.r),
                            topRight: Radius.circular(28.r),
                          ),
                    boxShadow: title == "İletişim"
                        ? null
                        : [
                            BoxShadow(
                              color: Colors.black.withAlpha(30),
                              spreadRadius: 0,
                              blurRadius: 5,
                              offset: const Offset(0, -4), // 🔥 YUKARI GÖLGE!
                            ),
                          ],
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  child: Html(data: content, style: {
                    "body": Style(
                      color: title == "İletişim"
                          ? Theme.of(context).colorScheme.onSecondary
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                    "h5": Style(
                      color: title == "İletişim"
                          ? Theme.of(context).colorScheme.onSecondary
                          : Theme.of(context).colorScheme.onPrimary,
                      fontSize: FontSize(20.sp),
                      fontWeight: FontWeight.bold,
                    ),
                  }))

            // İçerik Container
          ],
        ),
      ],
    );
  }
}
