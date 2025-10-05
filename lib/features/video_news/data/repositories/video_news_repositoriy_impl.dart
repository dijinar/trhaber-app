import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/network/network_service.dart';
import '../../../home/domain/models/category_news/category_news_model.dart';
import '../../domain/repositories/video_news_repositoriy.dart';

@Singleton(as: VideoNewsRepository)
class VideoNewsRepositoryImpl implements VideoNewsRepository {
  final NetworkService _networkService;

  VideoNewsRepositoryImpl(this._networkService);

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> getMultiMedia() async {
    final result = await _networkService.get(Endpoints.multimedia);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data is! List) {
            return left(
                const Failure.parsingError("Multimedia listesi bulunamadı"));
          }

          final newsList = data
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(newsList);
        } catch (e) {
          return left(
              const Failure.parsingError("Multimedia verisi parse edilemedi"));
        }
      },
    );
  }
}
