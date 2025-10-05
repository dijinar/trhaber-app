import 'package:injectable/injectable.dart';

import '../../../core/constants/dummy_data.dart';
import '../../../core/models/news/news_model.dart';
import '../domain/repositories/saved_news_repository.dart';

@LazySingleton(as: SavedNewsRepository)
class DummySavedNewsRepository implements SavedNewsRepository {
  final List<NewsModel> _saved = [...dummySavedNews];

  @override
  Future<List<NewsModel>> getSavedNews() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _saved;
  }

  @override
  Future<void> saveNews(NewsModel news) async {
    _saved.add(news);
  }

  @override
  Future<void> removeNews(int newsId) async {
    _saved.removeWhere((element) => element.id == newsId);
  }

  @override
  Future<bool> isSaved(int id) {
    return Future.value(_saved.any((element) => element.id == id));
  }
}
