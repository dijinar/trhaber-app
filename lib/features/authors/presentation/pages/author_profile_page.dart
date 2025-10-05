import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/extensions/extensions.dart';
import 'package:trnews/features/shared/custom_appbar.dart';
import 'package:trnews/features/shared/widgets/custom_icon_button.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';

import '../../../../core/di/locator.dart';
import '../../../shared/widgets/weather_widget.dart';
import '../../domain/models/article_model/article_model.dart';
import '../../domain/models/author_model/author_model.dart';
import '../../domain/repositories/author_repository.dart';
import '../bloc/author_profile_bloc/author_profile_bloc.dart';

@RoutePage()
class AuthorProfilePage extends StatelessWidget {
  final AuthorModel author;

  const AuthorProfilePage({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthorProfileBloc(
        author: author,
        repository: locator<AuthorRepository>(),
      )..add(const AuthorProfileEvent.fetchArticles()),
      child: Scaffold(
        appBar: const CustomAppBar(
          showMenuButton: false,
          showBackButton: true,
          trailingWidget: WeatherWidget(),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _AuthorHeader(author: author),
              const _ArticleSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class _AuthorHeader extends StatelessWidget {
  final AuthorModel author;

  const _AuthorHeader({required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(-0.3, -1.0),
          end: const Alignment(1.0, 0.4),
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).primaryColorDark,
          ],
        ),
      ),
      child: Column(
        children: [
          SafeImage(
            width: 75.w,
            height: 75.h,
            isCircle: true,
            url: author.image,
          ),
          Text(
            author.name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (author.instagram != null)
                const Icon(Icons.camera_alt, color: Colors.white),
              const SizedBox(width: 8),
              if (author.twitter != null)
                const Icon(Icons.alternate_email, color: Colors.white),
              const SizedBox(width: 8),
              if (author.facebook != null)
                const Icon(Icons.facebook, color: Colors.white),
              const SizedBox(width: 8),
              if (author.whatsapp != null)
                const Icon(Icons.phone, color: Colors.white),
              const SizedBox(width: 8),
            ],
          )
        ],
      ),
    );
  }
}

class _ArticleSection extends StatelessWidget {
  const _ArticleSection();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthorProfileBloc, AuthorProfileState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (msg) => Center(child: Text("Hata: $msg")),
          loaded: (author, articles) {
            if (articles.isEmpty) {
              return const Center(child: Text("Yazı bulunamadı."));
            }
            return Transform(
              transform: Matrix4.translationValues(0, -40.h, 0),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(12),
                itemCount: articles.length,
                separatorBuilder: (_, __) => SizedBox(height: 9.h),
                itemBuilder: (context, index) {
                  final article = articles[index];
                  return _ArticleCard(article: article);
                },
              ),
            );
          },
        );
      },
    );
  }
}

class _ArticleCard extends StatelessWidget {
  final ArticleModel article;

  const _ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(28.r),
      decoration: BoxDecoration(
        boxShadow: context.defaultBoxShadow,
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: context.smallBorderRadius,
        border: Border.all(color: context.theme.cardColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title,
            style: context.textTheme.titleLarge,
          ),
          context.smallSpacing,
          Text(
            article.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: context.textTheme.displayLarge,
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Text(
                article.date,
                style: context.textTheme.displayLarge!.copyWith(
                  color: context.colorScheme.onPrimary.withAlpha(100),
                ),
              ),
              const Spacer(),
              Text(
                "Yazıyı Oku",
                style: context.textTheme.displayLarge!.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
              SizedBox(width: 8.w),
              CustomIconButton(
                padding: 0,
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 10.r,
                  color: Theme.of(context).colorScheme.primary,
                ),
                size: 20.r,
                color: Theme.of(context).colorScheme.primary,
              )
            ],
          ),
        ],
      ),
    );
  }
}
