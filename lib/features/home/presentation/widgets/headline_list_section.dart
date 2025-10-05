import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';

import '../../../../core/di/locator.dart';
import '../../domain/repositories/home_repository.dart';
import '../bloc/headline/headline_bloc.dart';
import 'news_carousel_slider.dart';

class HeadlineListSection extends StatelessWidget {
  const HeadlineListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HeadlineBloc(locator<HomeRepository>())
        ..add(const HeadlineEvent.fetch()),
      child: BlocBuilder<HeadlineBloc, HeadlineState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Yükleniyor...")),
            loading: () => const CustomShimmer(
              itemCount: 1,
              height: 250,
              lineCount: 1,
            ),
            error: (message) => Center(child: Text("Hata: $message")),
            loaded: (headlines) {
              if (headlines.isEmpty) {
                return const Center(child: Text("Manşet bulunamadı."));
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NewsCarouselSlider(items: headlines),
                  const SizedBox(height: 16),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
