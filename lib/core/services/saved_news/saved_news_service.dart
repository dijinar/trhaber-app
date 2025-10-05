import '../../../features/home/domain/models/category_news/category_news_model.dart';

abstract interface class SavedNewsService {
  Future<List<CategoryNewsModel>> getSavedNews();
  Future<void> add(CategoryNewsModel model);
  Future<void> remove(String id);
  Future<bool> isSaved(String id);
}
