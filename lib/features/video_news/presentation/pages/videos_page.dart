import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trnews/core/di/locator.dart';
import 'package:trnews/features/home/domain/models/category/category_model.dart';
import 'package:trnews/features/home/presentation/widgets/static_news_list_view.dart';

import '../../domain/repositories/video_news_repositoriy.dart';
import '../bloc/multimedia/multimedia_bloc.dart';

@RoutePage()
class VideosPage extends StatelessWidget {
  const VideosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MultimediaBloc(locator<VideoNewsRepository>())
        ..add(const MultimediaEvent.fetch()),
      child: BlocBuilder<MultimediaBloc, MultimediaState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(
              child: Text('Video haberler burada gösterilecek'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (videos) => SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 150),
              child: StaticNewsListView(
                carouselSliderCount: 2,
                newsList: videos,
                category: const CategoryModel(
                    id: "", name: "Video", slug: "", color: "#CC0000"),
              ),
            ),
            error: (message) => Center(
              child: Text('Hata: $message'),
            ),
          );
        },
      ),
    );
  }
}
