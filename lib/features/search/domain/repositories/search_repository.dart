import 'package:fpdart/fpdart.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../home/domain/models/category_news/category_news_model.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<CategoryNewsModel>>> searchNews(String keyword);
}
