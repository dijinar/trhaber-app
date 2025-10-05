import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:trnews/core/constants/endpoints.dart';
import 'package:trnews/core/models/news_detail/news_detail_model.dart';
import 'package:trnews/features/news_detail/domain/models/feedback_model.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/network/network_service.dart';
import '../../domain/repositories/news_detail_repository.dart';

@LazySingleton(as: NewsDetailRepository)
class NewsDetailsRepositoryImpl implements NewsDetailRepository {
  final NetworkService networkService;
  final Dio dio;
  NewsDetailsRepositoryImpl(this.networkService, this.dio);

  @override
  Future<Either<Failure, NewsDetailModel>> getNewsDetail(String id) async {
    final result = await networkService.get(
      Endpoints.newsDetail(id),
    );

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final model = NewsDetailModel.fromJson(response.data!);
          return right(model);
        } catch (e) {
          return left(
            const Failure.parsingError("Detay verisi çözümlenemedi"),
          );
        }
      },
    );
  }

  @override
  Future<Either<Failure, FeedbackModel>> getFeedback(String newsId) async {
    try {
      final response = await dio.get(
        Endpoints.feedback,
        options: Options(
          method: 'GET',
          headers: {'Content-Type': 'application/json'},
        ),
        data: {
          "id": newsId,
        }, // Body GET isteğine ekleniyor (sunucu kabul ederse)
      );

      final data = response.data;
      final model = FeedbackModel.fromJson(data);
      return right(model);
    } on DioException catch (e) {
      return left(Failure.unknownError(e.message ?? 'Network error'));
    } catch (e) {
      return left(Failure.parsingError('Parsing error: ${e.toString()}'));
    }
  }

  @override
  Future<Option<Failure>> sendComment({
    required String newsId,
    required String comment,
  }) async {
    final result = await networkService.post(
      Endpoints.feedback,
      data: {
        "id": newsId,
        "comment": comment,
      },
    );

    return result.fold(
      (failure) => some(failure),
      (_) => none(),
    );
  }

  @override
  Future<Option<Failure>> sendEmoji({
    required String newsId,
    required String emoji, // "like" or "dislike"
  }) async {
    final result = await networkService.post(
      Endpoints.feedback,
      data: {
        "id": newsId,
        "emoji": emoji,
      },
    );

    return result.fold(
      (failure) => some(failure),
      (_) => none(),
    );
  }
}
