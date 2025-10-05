import 'package:fpdart/fpdart.dart';
import 'package:trnews/features/authors/domain/models/article_model/article_model.dart';

import '../../../../core/models/failure/failure.dart';
import '../models/author_model/author_model.dart';

abstract class AuthorRepository {
  Future<Either<Failure, List<ArticleModel>>> getArticlesByAuthorId(
      String authorId);
  Future<Either<Failure, List<AuthorModel>>> getAuthors();
}
