import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:trnews/core/config/app_router.dart';
import 'package:trnews/features/shared/custom_appbar.dart';
import 'package:trnews/features/shared/widgets/custom_icon_button.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';

import '../../../../core/di/locator.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/models/news_detail/news_detail_model.dart';
import '../../../../core/services/saved_news/saved_news_service.dart';
import '../../../../core/services/share_service.dart';
import '../../../../gen/assets.gen.dart';
import '../../../home/domain/models/category_news/category_news_model.dart';
import '../../../shared/widgets/custom_shimmer.dart';
import '../../../shared/widgets/news_card.dart';
import '../../domain/models/feedback_model.dart';
import '../../domain/repositories/news_detail_repository.dart';
import '../bloc/news_detail/news_detail_bloc.dart';

import '../bloc/news_feedback/news_feedback_bloc.dart';

class TweetView extends StatefulWidget {
  final String tweetHtml;

  const TweetView({Key? key, required this.tweetHtml}) : super(key: key);

  @override
  State<TweetView> createState() => _TweetViewState();
}

class _TweetViewState extends State<TweetView> {
  double _height = 150; // Initial height, to be adjusted.
  InAppWebViewController? _webViewController;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tweetTheme = theme.brightness == Brightness.dark ? 'dark' : 'light';

    final html = """
    <!DOCTYPE html>
    <html>
    <head>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <style>
        body { margin: 0; overflow: hidden; }
        .twitter-tweet { border: none !important; }
      </style>
    </head>
    <body>
      ${widget.tweetHtml.replaceFirst('<blockquote class="twitter-tweet">', '<blockquote class="twitter-tweet" data-conversation="none" data-theme="$tweetTheme">')}
      <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </body>
    </html>
    """;

    return Container(
      //sadece alta silik bir border
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onPrimary.withAlpha(60),
            width: 1,
          ),
        ),
      ),

      height: _height,
      child: InAppWebView(
        initialData: InAppWebViewInitialData(data: html),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            transparentBackground: true,
            javaScriptEnabled: true,
          ),
          android: AndroidInAppWebViewOptions(
            useHybridComposition: true,
          ),
        ),
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
        onLoadStop: (controller, url) {
          _webViewController?.addJavaScriptHandler(
            handlerName: 'height',
            callback: (args) {
              if (args.isNotEmpty && args[0] is num) {
                final newHeight = (args[0] as num).toDouble();
                if (mounted && newHeight > 0 && _height != newHeight) {
                  setState(() {
                    _height = newHeight;
                  });
                }
              }
            },
          );

          _webViewController?.evaluateJavascript(source: """
            const observer = new ResizeObserver(entries => {
              for (let entry of entries) {
                window.flutter_inappwebview.callHandler('height', entry.target.scrollHeight);
              }
            });
            observer.observe(document.body);
          """);
        },
      ),
    );
  }
}

@RoutePage()
class NewsDetailPage extends StatelessWidget {
  final String newsId;
  const NewsDetailPage({Key? key, required this.newsId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsDetailBloc(repository: locator<NewsDetailRepository>())
        ..add(NewsDetailEvent.fetch(newsId)),
      child: BlocBuilder<NewsDetailBloc, NewsDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const _NewsDetailInitial(),
            loading: () => const _NewsDetailLoading(),
            error: (failure) => _NewsDetailError(failure: failure),
            loaded: (news) => _NewsDetailLoaded(news: news),
          );
        },
      ),
    );
  }
}

class _NewsDetailInitial extends StatelessWidget {
  const _NewsDetailInitial();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Henüz bir işlem yapılmadı.")),
    );
  }
}

// 2) LOADING
class _NewsDetailLoading extends StatelessWidget {
  const _NewsDetailLoading();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: EdgeInsets.all(24.r),
          child: const Column(children: [
            SizedBox(
              height: 60,
            ),
            CustomShimmer(
              itemCount: 1,
              height: 100,
              lineCount: 1,
            ),
            SizedBox(height: 20),
            CustomShimmer(
              itemCount: 1,
              height: 300,
              lineCount: 1,
            ),
            SizedBox(height: 20),
            CustomShimmer(
              itemCount: 1,
              height: 800,
              lineCount: 12,
              spacing: 4,
            ),
          ])),
    );
  }
}

// 3) ERROR
class _NewsDetailError extends StatelessWidget {
  final Failure failure;
  const _NewsDetailError({required this.failure});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  context.router.replace(const SplashRoute());
                },
                child: const Text("Tekrar Dene"))
          ],
        ),
      ),
    );
  }
}

// 4) LOADED
class _NewsDetailLoaded extends StatefulWidget {
  final NewsDetailModel news;
  const _NewsDetailLoaded({required this.news});

  @override
  State<_NewsDetailLoaded> createState() => _NewsDetailLoadedState();
}

class _NewsDetailLoadedState extends State<_NewsDetailLoaded> {
  bool isSaved = false;

  @override
  void initState() {
    super.initState();
    _checkSavedStatus();
  }

  Future<void> _checkSavedStatus() async {
    final result = await locator<SavedNewsService>().isSaved(widget.news.id);
    setState(() {
      isSaved = result;
    });
  }

  Future<void> _toggleSave() async {
    final service = locator<SavedNewsService>();
    if (isSaved) {
      await service.remove(widget.news.id);
    } else {
      final model = CategoryNewsModel(
        id: widget.news.id,
        title: widget.news.title,
        date: widget.news.date,
        image: widget.news.coverImage,
        canonical: widget.news.canonical,
      );
      await service.add(model);
    }
    setState(() {
      isSaved = !isSaved;
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CustomAppBar(
        showMenuButton: false,
        showBackButton: true,
        actions: [
          CustomIconButton(
            size: 48.r,
            onPressed: () {
              print("Paylaş butonuna tıklandı");
              shareService.shareText(
                "${widget.news.title}\n\n ${widget.news.canonical}",
              );
            },
            backgroundColor:
                Theme.of(context).colorScheme.onPrimary.withAlpha(15),
            icon: Assets.icons.sendDetails.svg(
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(width: 8.w),
          CustomIconButton(
            size: 48.r,
            onPressed: _toggleSave,
            backgroundColor: isSaved
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimary.withAlpha(15),
            icon: Icon(
              isSaved ? Icons.bookmark : Icons.bookmark_sharp,
              size: 26.r,
              color: isSaved
                  ? Theme.of(context).colorScheme.onSecondary
                  : Theme.of(context).colorScheme.onPrimary.withAlpha(100),
            ),
          ),
          SizedBox(width: 12.w),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 120.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _NewsHeader(news: widget.news),
            SizedBox(height: 8.h),
            if (widget.news.coverVideo.isNotEmpty)
              IframeVideoPlayer(iframeHtml: widget.news.coverVideo)
            else
              _CoverImage(imageUrl: widget.news.coverImage),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Html(
                data: widget.news.content,
                extensions: [
                  TagExtension(
                    tagsToExtend: {"blockquote"},
                    builder: (extensionContext) {
                      if (extensionContext.element?.className ==
                          'twitter-tweet') {
                        return TweetView(
                            tweetHtml: extensionContext.element!.outerHtml);
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                ],
                style: {
                  "body": Style(
                    fontSize: FontSize(textTheme.bodyMedium?.fontSize ?? 16),
                    fontWeight:
                        textTheme.bodyMedium?.fontWeight ?? FontWeight.normal,
                    fontFamily: textTheme.bodyMedium?.fontFamily,
                    color: textTheme.bodyMedium?.color ?? Colors.black87,
                    lineHeight: const LineHeight(1.5),
                  ),
                  "p": Style(
                    fontSize:
                        FontSize(textTheme.displayLarge?.fontSize ?? 16.sp),
                    color: textTheme.displayLarge?.color,
                  ),
                  "h1": Style(
                    fontSize: FontSize(textTheme.titleLarge?.fontSize ?? 24),
                    fontWeight:
                        textTheme.headlineLarge?.fontWeight ?? FontWeight.bold,
                    color: textTheme.headlineLarge?.color,
                  ),
                  "h2": Style(
                    fontSize: FontSize(textTheme.titleMedium?.fontSize ?? 20),
                    fontWeight:
                        textTheme.headlineMedium?.fontWeight ?? FontWeight.bold,
                    color: textTheme.headlineMedium?.color,
                  ),
                  "h3": Style(
                    fontSize: FontSize(textTheme.titleSmall?.fontSize ?? 18),
                    fontWeight:
                        textTheme.titleLarge?.fontWeight ?? FontWeight.bold,
                    color: textTheme.titleLarge?.color,
                  ),
                  "a": Style(
                    textDecoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                },
              ),
            ),
            const SizedBox(height: 24),
            if (widget.news.relationNews.isNotEmpty)
              _RelatedNewsSection(relationNews: widget.news.relationNews),
          ],
        ),
      ),
      bottomSheet: _BottomButtons(
        newsId: widget.news.id,
      ),
    );
  }
}

/* ==========================
   SUB WIDGETS
========================== */

class _NewsHeader extends StatelessWidget {
  final NewsDetailModel news;
  const _NewsHeader({required this.news});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Başlık
          Text(news.title, style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 8.r),

          // Alt bilgiler: tarih, kategori, yazar
          Row(
            children: [
              Text(news.date,
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withAlpha(100),
                      )),
              SizedBox(width: 16.w),
              //dot
              Container(
                width: 4.w,
                height: 4.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(width: 4.w),
              Text(
                news.categoryName,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withAlpha(100),
                    ),
              ),
              const SizedBox(width: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withAlpha(100)),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.person,
                        size: 20.r,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withAlpha(100)),
                    Text(news.editorName,
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimary
                                      .withAlpha(100),
                                )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CoverImage extends StatelessWidget {
  final String imageUrl;
  const _CoverImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.r),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              insetPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 140,
              ),
              child: PhotoView(
                imageProvider: NetworkImage(imageUrl),
                backgroundDecoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered,
              ),
            );
          },
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
        ),
        child: AspectRatio(
          aspectRatio: 16 /
              9, // Default aspect ratio (will be overridden when image loads)
          child: SafeImage(
            url: imageUrl,
            width: double.infinity,
            fit: BoxFit.contain, // Changed to contain to preserve aspect ratio
          ),
        ),
      ),
    );
  }
}

class _RelatedNewsSection extends StatelessWidget {
  final List<CategoryNewsModel> relationNews;
  const _RelatedNewsSection({required this.relationNews});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: Text("Önerilen Haberler",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    )),
          ),
          Container(
            //sadece sol tarafına border
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Theme.of(context).colorScheme.primary,
                  width: 4,
                ),
              ),
            ),
            child: ListView.separated(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                final news = relationNews[index];
                return NewsCard(news: news);
              },
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemCount: relationNews.length,
            ),
          )
          // List
        ],
      ),
    );
  }
}

class _BottomButtons extends StatelessWidget {
  final String newsId;

  const _BottomButtons({required this.newsId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsFeedbackBloc(repository: locator())
        ..add(NewsFeedbackEvent.fetch(newsId)),
      child: BlocBuilder<NewsFeedbackBloc, NewsFeedbackState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (feedback) =>
                _FeedbackActions(newsId: newsId, feedback: feedback),
            submitting: (feedback) =>
                _FeedbackActions(newsId: newsId, feedback: feedback),
            orElse: () => const SizedBox.shrink(),
            error: (failure) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(52.r),
              ),
              margin: EdgeInsets.only(bottom: 33.h, left: 16.w, right: 16.w),
              padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
              child: Text(
                "Hata: ${failure.message}",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _FeedbackActions extends StatelessWidget {
  final String newsId;
  final FeedbackModel feedback;

  const _FeedbackActions({
    required this.newsId,
    required this.feedback,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NewsFeedbackBloc>();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.h),
      margin: EdgeInsets.only(bottom: 33.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(52.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _ActionButton(
            icon: Icon(
              feedback.isLiked ? Icons.favorite : Icons.favorite_border,
              size: 36.r,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            count: feedback.likeCount,
            onTap: () => bloc.add(const NewsFeedbackEvent.likePressed()),
          ),
          SizedBox(width: 12.w),
          SizedBox(
            height: 28.h,
            child: VerticalDivider(
              color: Theme.of(context).colorScheme.onSecondary.withAlpha(50),
              width: 1,
              thickness: 1,
            ),
          ),
          SizedBox(width: 12.w),
          _ActionButton(
            icon: Assets.icons.comment.svg(),
            count: feedback.commentCount,
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              builder: (modalContext) {
                return BlocProvider.value(
                  value: context.read<NewsFeedbackBloc>(), // mevcut bloğu aktar
                  child: FeedbackCommentSheet(newsId: newsId),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FeedbackCommentSheet extends StatelessWidget {
  final String newsId;

  const FeedbackCommentSheet({super.key, required this.newsId});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: BlocBuilder<NewsFeedbackBloc, NewsFeedbackState>(
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            submitting: (_) => true,
            orElse: () => false,
          );

          final feedback = state.maybeMap(
            loaded: (state) => state.feedback,
            submitting: (state) => state.feedback,
            orElse: () => null,
          );

          return SizedBox(
            height: 500.h,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 37.5.w,
                    right: 37.5.w,
                    top: 24.h,
                    bottom: 56.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Yorumlar',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge),
                      SizedBox(height: 16.h),
                      if (feedback != null)
                        Expanded(
                          child: ListView.separated(
                            padding: EdgeInsets.only(bottom: 32.h),
                            itemCount: feedback.comments.length,
                            separatorBuilder: (_, __) => SizedBox(height: 16.h),
                            itemBuilder: (context, index) {
                              final commentText = feedback.comments[index];

                              // Dummy veriler
                              final userName = index.isEven
                                  ? 'Seyfettin Düzayak'
                                  : 'Hüsamettin Kızıl';
                              final timeAgo = index.isEven
                                  ? '45 dakika önce'
                                  : '1 saat önce';
                              final likeCount = index.isEven ? 12 : 43;
                              final dislikeCount = index.isEven ? 5 : 1;

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(16.r),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary
                                                .withAlpha(150),
                                          ),
                                        ),
                                        child: Assets.icons.user.svg(
                                          width: 16.w,
                                          height: 16.h,
                                        ),
                                      ),
                                      SizedBox(width: 12.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            userName,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            timeAgo,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onPrimary
                                                      .withAlpha(100),
                                                ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    commentText,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge,
                                  ),
                                  Divider(
                                    height: 24.h,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimary
                                        .withAlpha(100),
                                  ),
                                  Row(
                                    children: [
                                      Assets.icons.like.svg(
                                        width: 20.w,
                                        height: 20.h,
                                        colorFilter: ColorFilter.mode(
                                          Theme.of(context)
                                              .colorScheme
                                              .onPrimary
                                              .withAlpha(80),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(likeCount.toString()),
                                      SizedBox(width: 12.w),
                                      Assets.icons.dislike.svg(
                                        width: 20.w,
                                        height: 20.h,
                                        colorFilter: ColorFilter.mode(
                                          Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(dislikeCount.toString()),
                                    ],
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                    ],
                  ),
                ),

                // Sabit TextField
                Positioned(
                  bottom: 16.h,
                  left: 37.5.w,
                  right: 37.5.w,
                  child: TextField(
                    controller: controller,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 15.h,
                        horizontal: 24.w,
                      ),
                      hintText: "Yorumunu buraya yaz...",
                      hintStyle: const TextStyle(fontSize: 16),
                      border: InputBorder.none,
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 0,
                        minHeight: 0,
                        maxWidth: 48.w,
                        maxHeight: 24.h,
                      ),
                      suffixIcon: isLoading
                          ? Padding(
                              padding: const EdgeInsets.all(10),
                              child: SizedBox(
                                width: 24.w,
                                height: 24.h,
                                child: const CircularProgressIndicator(
                                    strokeWidth: 2),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: GestureDetector(
                                child: Assets.icons.comment.svg(
                                  width: 22.w,
                                  height: 22.h,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context)
                                        .colorScheme
                                        .secondary
                                        .withAlpha(100),
                                    BlendMode.srcIn,
                                  ),
                                ),
                                onTap: () {
                                  final text = controller.text.trim();
                                  if (text.isNotEmpty) {
                                    context.read<NewsFeedbackBloc>().add(
                                          NewsFeedbackEvent.commentSubmitted(
                                            newsId: newsId,
                                            comment: text,
                                          ),
                                        );
                                    controller.clear();
                                  }
                                },
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final Widget icon;
  final int count;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.count,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          icon,
          SizedBox(width: 6.w),
          Text(
            count.toString(),
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ],
      ),
    );
  }
}

class IframeVideoPlayer extends StatefulWidget {
  final String iframeHtml;

  const IframeVideoPlayer({super.key, required this.iframeHtml});

  @override
  State<IframeVideoPlayer> createState() => _IframeVideoPlayerState();
}

class _IframeVideoPlayerState extends State<IframeVideoPlayer> {
  InAppWebViewController? _webViewController;
  late final String videoUrl;

  @override
  void initState() {
    super.initState();
    videoUrl = _extractSrcFromIframe(widget.iframeHtml) ?? "";
  }

  @override
  Widget build(BuildContext context) {
    if (videoUrl.isEmpty) return const SizedBox.shrink();

    return Stack(
      children: [
        SizedBox(
          height: 300,
          child: InAppWebView(
            key: ValueKey(videoUrl),
            initialUrlRequest:
                videoUrl.isNotEmpty ? URLRequest(url: WebUri(videoUrl)) : null,
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                mediaPlaybackRequiresUserGesture: false,
              ),
              ios: IOSInAppWebViewOptions(
                allowsInlineMediaPlayback: true,
              ),
              android: AndroidInAppWebViewOptions(
                useHybridComposition: true,
              ),
            ),
            onWebViewCreated: (controller) {
              _webViewController = controller;
            },
          ),
        ),

        // Overlay buton
        Positioned(
          top: 0,
          bottom: 40,
          right: 0,
          left: 0,
          child: GestureDetector(
            onTap: () async {
              if (_webViewController == null) return;
              try {
                await _webViewController!.evaluateJavascript(source: '''
                  document.querySelector('button.fullscreen, .ytp-fullscreen-button')?.click();
                ''');
                await _webViewController!.evaluateJavascript(source: '''
                  var video = document.querySelector('video');
                  if (video) video.play();
                ''');
              } catch (e) {
                debugPrint("Fullscreen/Play JS error: $e");
              }
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(),
              child:
                  const Icon(Icons.play_arrow, color: Colors.white, size: 60),
            ),
          ),
        )
      ],
    );
  }

  String? _extractSrcFromIframe(String iframe) {
    final regex = RegExp(r'src="([^"]+)"');
    final match = regex.firstMatch(iframe);
    return match?.group(1);
  }
}
