import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/endpoints.dart';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/network/network_service.dart';
import '../../../home/domain/models/category_news/category_news_model.dart';
import '../../domain/repositories/search_repository.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final NetworkService _networkService;

  SearchRepositoryImpl(this._networkService);

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> searchNews(
      String keyword) async {
    final result = await _networkService.post(
      Endpoints.search,
      data: {"keyword": keyword},
    );

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final message = response.data?['message'];
          final data = response.data?['data'];

          // Eğer mesaj 'Arama sonucu bulunamadı.' ise boş liste dön
          if (message == 'Arama sonucu bulunamadı.') {
            return right([]);
          }

          // data list ise direkt al
          if (data is List) {
            final newsList = data
                .map((e) =>
                    CategoryNewsModel.fromJson(e as Map<String, dynamic>))
                .toList();
            return right(newsList);
          }

          // data içinde 'list' varsa onu al
          final rawList = data?['list'];
          if (rawList is List) {
            final newsList = rawList
                .map((e) =>
                    CategoryNewsModel.fromJson(e as Map<String, dynamic>))
                .toList();
            return right(newsList);
          }

          // Tüm durumlara uymuyorsa parsing hatası
          return left(
            const Failure.parsingError(
                "Arama sonucu listesi uygun formatta değil."),
          );
        } catch (e) {
          return left(
            const Failure.parsingError("Arama sonucu parse edilemedi."),
          );
        }
      },
    );
  }
}
