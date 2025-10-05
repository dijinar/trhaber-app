import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:trnews/core/constants/dummy_data.dart';
import 'package:trnews/core/constants/endpoints.dart';
import 'package:trnews/core/services/network/network_service.dart';
import 'package:trnews/features/home/domain/models/tag/tag_model.dart';
import 'dart:convert';
import '../../../../core/models/failure/failure.dart';
import '../../../../core/models/news/news_model.dart';
import '../../domain/models/category/category_model.dart';
import '../../domain/models/category_news/category_news_model.dart';
import '../../domain/models/headline/headline_model.dart';
import '../../domain/models/fixture/fixture_model.dart';
import '../../domain/repositories/home_repository.dart';

@Singleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final NetworkService _networkService;

  HomeRepositoryImpl(this._networkService);

  final Map<String, (CategoryModel, List<CategoryNewsModel>)> _categoryCache =
      {};
  List<CategoryNewsModel>? _breakingNewsCache;
  List<FixtureModel>? _fixtureCache;

  void clearAllCaches() {
    _categoryCache.clear();
    _breakingNewsCache = null;
    _fixtureCache = null;
  }

  @override
  Future<List<NewsModel>> getNews() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    return [...dummySavedNews];
  }

  @override
  Future<Either<Failure, List<HeadlineModel>>> getHeadlines() async {
    final result = await _networkService.get(Endpoints.headline);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final rawList = response.data?['data'];
          if (rawList is! List) {
            return left(
                const Failure.parsingError("Manşet verisi listesi bulunamadı"));
          }

          final headlines = rawList
              .map((e) => HeadlineModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(headlines);
        } catch (e) {
          return left(
              const Failure.parsingError("Manşet verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getCategories() async {
    final result = await _networkService.get(Endpoints.categories);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final rawList = response.data?['data'];
          if (rawList is! List) {
            return left(
              const Failure.parsingError("Kategori verisi listesi bulunamadı"),
            );
          }

          final categories = rawList
              .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(categories);
        } catch (e) {
          return left(
            const Failure.parsingError("Kategori verisi parse edilemedi"),
          );
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> getCategoryNews(
    String categoryId, {
    int page = 1,
  }) async {
    final result = await _networkService.get(
      Endpoints.categoryDetail(categoryId),
      queryParameters: {"page": page},
    );

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data']?['list'];
          if (data is! List) {
            return left(const Failure.parsingError(
                "Kategori haberleri listesi bulunamadı"));
          }

          final newsList = data
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(newsList);
        } catch (e) {
          return left(
              const Failure.parsingError("Kategori haberleri parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, (CategoryModel, List<CategoryNewsModel>)>>
      getCategoryNewsWithInfo(String categoryId) async {
    if (_categoryCache.containsKey(categoryId)) {
      return Right(_categoryCache[categoryId]!);
    }

    final result =
        await _networkService.get(Endpoints.categoryDetail(categoryId));

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data == null) {
            return left(const Failure.parsingError("Veri alanı bulunamadı."));
          }

          final catData = data['catData'];
          final newsListRaw = data['list'];

          if (catData == null || newsListRaw == null || newsListRaw is! List) {
            return left(const Failure.parsingError("Veri yapısı geçersiz."));
          }

          final category =
              CategoryModel.fromJson(catData as Map<String, dynamic>);
          final newsList = newsListRaw
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          // ✅ CACHE GÜNCELLEME
          _categoryCache[categoryId] = (category, newsList);

          return right((category, newsList));
        } catch (e) {
          return left(const Failure.parsingError(
              "Kategori detay verisi çözümlenemedi."));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> getWhatHappened() async {
    final result = await _networkService.get(Endpoints.whatHappened);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data is! List) {
            return left(
                const Failure.parsingError("WhatHappened listesi bulunamadı"));
          }

          final newsList = data
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(newsList);
        } catch (e) {
          return left(const Failure.parsingError(
              "WhatHappened verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> getBreakingNews() async {
    // ✅ CACHE KONTROLÜ
    if (_breakingNewsCache != null) {
      return Right(_breakingNewsCache!);
    }

    final result = await _networkService.get(Endpoints.breakingNews);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data is! List) {
            return left(
              const Failure.parsingError("Breaking news listesi bulunamadı"),
            );
          }

          final newsList = data
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          // ✅ CACHE GÜNCELLEME
          _breakingNewsCache = newsList;

          return right(newsList);
        } catch (e) {
          return left(const Failure.parsingError(
              "Breaking news verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> getTopHeadlines() async {
    final result = await _networkService.get(Endpoints.topHeadlines);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data is! List) {
            return left(
                const Failure.parsingError("Top headlines listesi bulunamadı"));
          }

          final newsList = data
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(newsList);
        } catch (e) {
          return left(const Failure.parsingError(
              "Top headlines verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> getInfographic() async {
    // Make sure Endpoints.infographic is defined in your Endpoints file
    final result = await _networkService.get(Endpoints.infographic);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data is! List) {
            return left(
                const Failure.parsingError("Infographic listesi bulunamadı"));
          }

          final newsList = data
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(newsList);
        } catch (e) {
          return left(
              const Failure.parsingError("Infographic verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryNewsModel>>>
      getVerticalHeadlines() async {
    final result = await _networkService.get(Endpoints.verticalHeadlines);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final data = response.data?['data'];
          if (data is! List) {
            return left(const Failure.parsingError(
                "Vertical headlines listesi bulunamadı"));
          }

          final newsList = data
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(newsList);
        } catch (e) {
          return left(const Failure.parsingError(
              "Vertical headlines verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<TagModel>>> getTags() async {
    final result = await _networkService.get(Endpoints.tags);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final dataList = response.data?['data'];
          if (dataList is! List) {
            return left(
                const Failure.parsingError("Etiket verisi listesi bulunamadı"));
          }

          final tags = dataList
              .map((e) => TagModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(tags);
        } catch (e) {
          return left(
              const Failure.parsingError("Etiket verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<CategoryNewsModel>>> getTagDetails(
      String tagId) async {
    final result = await _networkService.get(Endpoints.tagDetail(tagId));

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final dataList = response.data?['data'];
          if (dataList is! List) {
            return left(const Failure.parsingError(
                "Etiket haberleri listesi bulunamadı"));
          }

          final newsList = dataList
              .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
              .toList();

          return right(newsList);
        } catch (e) {
          return left(const Failure.parsingError(
              "Etiket haber verisi parse edilemedi"));
        }
      },
    );
  }

  @override
  Future<Either<Failure, List<FixtureModel>>> getFixtures() async {
    // ✅ CACHE KONTROLÜ
    if (_fixtureCache != null) {
      return Right(_fixtureCache!);
    }

    final result = await _networkService.get(Endpoints.fixture);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final dataString = response.data?['data'];
          if (dataString is! String) {
            return left(
                const Failure.parsingError("Fikstür verisi string değil"));
          }

          // Parse the JSON string to List
          final dataList = jsonDecode(dataString);
          if (dataList is! List) {
            return left(const Failure.parsingError(
                "Fikstür verisi listesi bulunamadı"));
          }

          final fixtures = dataList
              .map((e) => FixtureModel.fromJson(e as Map<String, dynamic>))
              .toList();

          // ✅ CACHE GÜNCELLEME
          _fixtureCache = fixtures;

          return right(fixtures);
        } catch (e) {
          return left(
              const Failure.parsingError("Fikstür verisi parse edilemedi"));
        }
      },
    );
  }
}
