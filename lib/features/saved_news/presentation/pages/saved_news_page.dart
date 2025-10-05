import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:trnews/core/extensions/extensions.dart';
import 'package:trnews/core/services/saved_news/saved_news_service.dart';
import 'package:trnews/features/home/domain/models/category_news/category_news_model.dart';

import '../../../../core/config/app_router.dart';
import '../../../../core/di/locator.dart';
import '../bloc/saved_news_bloc.dart';

@RoutePage()
class SavedNewsPage extends StatefulWidget {
  const SavedNewsPage({super.key});

  @override
  State<SavedNewsPage> createState() => _SavedNewsPageState();
}

class _SavedNewsPageState extends State<SavedNewsPage>
    with AutomaticKeepAliveClientMixin {
  late final SavedNewsBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = SavedNewsBloc(locator<SavedNewsService>());
    _bloc.add(const SavedNewsEvent.fetch());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (ModalRoute.of(context)?.isCurrent ?? false) {
      _bloc.add(const SavedNewsEvent.fetch());
    }
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // AutomaticKeepAliveClientMixin için gereklidir
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        body: Stack(
          children: [
            //background
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(53.r),
                  topRight: Radius.circular(53.r),
                ),
                color: Theme.of(context).colorScheme.surfaceBright,
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                top: 50.h,
              ),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Kaydedilenler",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const _SavedNewsList(),
                  SizedBox(
                    height: 120.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SavedNewsList extends StatelessWidget {
  const _SavedNewsList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedNewsBloc, SavedNewsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (msg) => Center(child: Text("Hata: $msg")),
          loaded: (news) {
            if (news.isEmpty) {
              return SizedBox(
                height: 500.h,
                child: Center(
                    child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 23.w,
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withAlpha(150),
                          ),
                          borderRadius: BorderRadius.circular(19.r),
                        ),
                        child: Text("Kaydedilen haber yok.",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withAlpha(90))))),
              );
            }
            return ColoredBox(
              color: Theme.of(context).colorScheme.surfaceBright,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (_, __) => SizedBox(height: 10.h),
                itemCount: news.length,
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  right: 16,
                ),
                itemBuilder: (context, index) {
                  return _SavedNewsCard(news: news[index]);
                },
              ),
            );
          },
        );
      },
    );
  }
}

class _SavedNewsCard extends StatelessWidget {
  final CategoryNewsModel news;

  const _SavedNewsCard({required this.news});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(
          NewsDetailRoute(newsId: news.id),
        );
      },
      child: Slidable(
        key: ValueKey(news.id),
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          extentRatio: 0.25,
          children: [
            CustomSlidableAction(
              onPressed: (_) {
                context.read<SavedNewsBloc>().add(
                      SavedNewsEvent.remove(news.id),
                    );
              },
              padding: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).primaryColorDark,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(2.r),
                    bottomRight: Radius.circular(2.r),
                  ),
                ),
                alignment: Alignment.center,
                child: Icon(
                  size: 28.w,
                  Icons.delete,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
          ],
        ),
        child: Stack(
          children: [
            if (news.image != null)
              Container(
                width: double.infinity,
                height: 200.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(news.image!),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: context.smallBorderRadius,
                ),
              ),
            //gradient
            Container(
              width: double.infinity,
              height: 220.h,
              decoration: BoxDecoration(
                borderRadius: context.smallBorderRadius,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),

            Positioned(
              top: 16,
              right: 32,
              child: GestureDetector(
                onTap: () {
                  news.isSaved
                      ? context.read<SavedNewsBloc>().add(
                            SavedNewsEvent.unsave(news.id),
                          )
                      : context.read<SavedNewsBloc>().add(
                            SavedNewsEvent.add(news),
                          );
                },
                child: Container(
                  width: 42.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    color: news.isSaved
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).colorScheme.onSecondary,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.bookmark,
                    color: news.isSaved
                        ? Theme.of(context).colorScheme.onSecondary
                        : Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withAlpha(100),
                  ),
                ),
              ),
            ),

            //content
            Positioned(
              bottom: 16,
              left: 16,
              right: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(news.title,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                          )),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    news.date,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondary
                              .withAlpha(200),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
