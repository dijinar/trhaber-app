import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/config/app_router.dart';
import 'package:trnews/core/extensions/extensions.dart';
import 'package:trnews/features/shared/custom_appbar.dart';
import 'package:trnews/features/shared/widgets/custom_icon_button.dart';
import 'package:trnews/features/shared/widgets/safe_image.dart';
import 'package:trnews/features/shared/widgets/weather_widget.dart';
import '../../../../core/di/locator.dart';
import '../../domain/models/author_model/author_model.dart';
import '../../domain/repositories/author_repository.dart';
import '../bloc/author_bloc/author_bloc.dart';

@RoutePage()
class AuthorsPage extends StatelessWidget {
  final bool? isFromHome;
  const AuthorsPage({super.key, this.isFromHome = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthorBloc(locator<AuthorRepository>())
        ..add(const AuthorEvent.fetch()),
      child: Scaffold(
        appBar: isFromHome == true
            ? const CustomAppBar(
                trailingWidget: WeatherWidget(),
                showMenuButton: false,
                showBackButton: true,
              )
            : null,
        body: BlocBuilder<AuthorBloc, AuthorState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (msg) => Center(child: Text("Hata: $msg")),
              loaded: (authors) => SingleChildScrollView(
                  child: _AuthorListView(authors: authors)),
            );
          },
        ),
      ),
    );
  }
}

class _AuthorListView extends StatelessWidget {
  final List<AuthorModel> authors;

  const _AuthorListView({required this.authors});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        bottom: 120.h,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      itemCount: authors.length,
      itemBuilder: (context, index) {
        final author = authors[index];
        return GestureDetector(
          onTap: () {
            context.pushRoute(AuthorProfileRoute(author: author));
          },
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme.of(context).cardColor),
                borderRadius: context.smallBorderRadius,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(100),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  SafeImage(
                    isCircle: true,
                    url: author.image,
                    width: 76.w,
                    height: 76.h,
                  ),
                  // Container(
                  //   width: 76,
                  //   height: 76,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       image: NetworkImage(author.image),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(width: 11.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        author.name,
                        style: context.textTheme.titleMedium,
                      ),
                      SizedBox(height: 4.h),
                      SizedBox(
                        width: 200.w,
                        child: Text(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          author.lastArticleTitle,
                          style: context.textTheme.displayLarge,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Text(
                            author.lastArticleDate,
                            style: context.textTheme.displayLarge!.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary
                                  .withAlpha(70),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Row(
                            children: [
                              Text(
                                "Tüm Yazılar",
                                style: context.textTheme.displayLarge!.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
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
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )),
        );
      },
    );
  }
}
