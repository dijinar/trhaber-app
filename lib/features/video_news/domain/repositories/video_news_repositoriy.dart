import 'package:dartz/dartz.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../home/domain/models/category_news/category_news_model.dart';

abstract class VideoNewsRepository {
  Future<Either<Failure, List<CategoryNewsModel>>> getMultiMedia();
}
