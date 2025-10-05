import 'package:fpdart/fpdart.dart';
import 'package:trnews/features/news_detail/domain/models/feedback_model.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../core/models/news_detail/news_detail_model.dart';

abstract class NewsDetailRepository {
  Future<Either<Failure, NewsDetailModel>> getNewsDetail(String id);
  Future<Either<Failure, FeedbackModel>> getFeedback(String newsId);
  Future<Option<Failure>> sendComment({
    required String newsId,
    required String comment,
  });

  Future<Option<Failure>> sendEmoji({
    required String newsId,
    required String emoji,
  });
}
