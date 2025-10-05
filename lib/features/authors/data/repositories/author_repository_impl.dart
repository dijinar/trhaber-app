import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:trnews/core/constants/endpoints.dart';
import 'package:trnews/features/authors/domain/models/article_model/article_model.dart';

import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/network/network_service.dart';
import '../../domain/models/author_model/author_model.dart';
import '../../domain/repositories/author_repository.dart';

@LazySingleton(as: AuthorRepository)
class AuthorRepositoryImpl implements AuthorRepository {
  final NetworkService _networkService;

  AuthorRepositoryImpl(this._networkService);
  @override
  Future<Either<Failure, List<AuthorModel>>> getAuthors() async {
    final result =
        await _networkService.get(Endpoints.authors); // endpoint adını güncelle

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final rawList = response.data?['data'];
          if (rawList is! List) {
            return left(
              const Failure.parsingError("Yazar verisi listesi bulunamadı"),
            );
          }

          final authors = rawList
              .map((e) => AuthorModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(authors);
        } catch (e) {
          return left(
            const Failure.parsingError("Yazar verisi parse edilemedi"),
          );
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<ArticleModel>>> getArticlesByAuthorId(
      String authorId) async {
    final result = await _networkService
        .get(Endpoints.articles(authorId)); // endpoint'i gerektiği gibi ayarla

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data is! Map || data['list'] is! List) {
            return left(
                const Failure.parsingError("Makale listesi verisi geçersiz"));
          }

          final rawList = data['list'] as List<dynamic>;

          final articles = rawList
              .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(articles);
        } catch (e) {
          return left(
              const Failure.parsingError("Makale verisi parse edilemedi"));
        }
      },
    );
  }
}
