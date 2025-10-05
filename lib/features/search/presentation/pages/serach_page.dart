import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/features/search/presentation/bloc/search_bloc.dart';
import 'package:trnews/features/shared/custom_appbar.dart';
import 'package:trnews/features/shared/widgets/global_search_field.dart';
import 'package:trnews/features/shared/widgets/news_card.dart';
import 'package:trnews/features/shared/widgets/weather_widget.dart';
import '../../../../core/config/app_router.dart';
import '../../../../gen/assets.gen.dart';
import '../../../home/domain/repositories/home_repository.dart';
import '../../../shared/presentation/bloc/what_happend/what_happened_bloc.dart';
import '../../../shared/widgets/info_container.dart';
import '../../domain/repositories/search_repository.dart';
import '../../../../core/di/locator.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  final String? keyword;

  const SearchPage({super.key, this.keyword});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => SearchBloc(locator<SearchRepository>())
            ..add(SearchEvent.started(keyword ?? "Son Dakika")),
        ),
        BlocProvider(
          create: (_) => WhatHappenedBloc(locator<HomeRepository>())
            ..add(const FetchWhatHappenedEvent()),
        ),
      ],
      child: _SearchPageContent(initialKeyword: keyword),
    );
  }
}

class _SearchPageContent extends StatefulWidget {
  final String? initialKeyword;

  const _SearchPageContent({this.initialKeyword});

  @override
  State<_SearchPageContent> createState() => _SearchPageContentState();
}

class _SearchPageContentState extends State<_SearchPageContent> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialKeyword);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.initialKeyword == null
          ? null
          : CustomAppBar(
              trailingWidget: WeatherWidget(),
              showBackButton: true,
              showMenuButton: false,
            ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12.w),
              child: GlobalSearchField(
                controller: _controller,
                hintText: "Haberi arayın...",
                prefixIcon: Icons.search,
                onSubmitted: (value) {
                  if (value.trim().isNotEmpty) {
                    context
                        .read<SearchBloc>()
                        .add(SearchEvent.started(value.trim()));
                  }
                },
              ),
            ),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                return Column(
                  children: [
                    if (state.maybeWhen(
                        loaded: (_, results) => results.isNotEmpty,
                        orElse: () => false))
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 4.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text(
                                "Arama Sonuçları :  ",
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              InfoContainer(
                                text: state.whenOrNull(
                                  loaded: (keyword, results) =>
                                      "${results.length} sonuç bulundu",
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    state.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (msg) => Center(child: Text("Hata: $msg")),
                      loaded: (keyword, results) => results.isEmpty
                          ? Center(
                              child: Column(
                              children: [
                                SizedBox(height: 64.h),
                                Assets.icons.sad.svg(),
                                SizedBox(height: 24.h),
                                const InfoContainer(
                                  text: "Sonuç bulunamadı",
                                )
                              ],
                            ))
                          : ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  vertical: 16.h, horizontal: 12.w),
                              itemCount: results.length,
                              separatorBuilder: (_, __) =>
                                  SizedBox(height: 12.h),
                              itemBuilder: (context, index) {
                                final item = results[index];
                                return NewsCard(
                                  news: item,
                                  onTap: () {
                                    context.router.push(
                                      NewsDetailRoute(newsId: item.id),
                                    );
                                  },
                                );
                              },
                            ),
                    ),
                  ],
                );
              },
            ),

            _WhatHappenedSection(), // 🔥 İşte öneri haberler burada
          ],
        ),
      ),
    );
  }
}

class _WhatHappenedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WhatHappenedBloc, WhatHappenedState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
              child: Text(
                "Bunlara göz atın",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            if (state is WhatHappenedLoading)
              const Center(child: CircularProgressIndicator()),
            if (state is WhatHappenedError)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: InfoContainer(text: state.message),
              ),
            if (state is WhatHappenedLoaded)
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                itemCount: state.news.length,
                separatorBuilder: (_, __) => SizedBox(height: 12.h),
                itemBuilder: (context, index) {
                  final item = state.news[index];
                  return NewsCard(
                    news: item,
                    onTap: () {
                      // detay sayfasına yönlendirme burada yapılmalı
                    },
                  );
                },
              ),
          ],
        );
      },
    );
  }
}
