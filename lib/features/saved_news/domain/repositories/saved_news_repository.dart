import '../../../../core/models/news/news_model.dart';

abstract class SavedNewsRepository {
  Future<List<NewsModel>> getSavedNews();
  Future<void> saveNews(NewsModel news);
  Future<void> removeNews(int id);
  Future<bool> isSaved(int id);
}
