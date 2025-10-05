import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/home/domain/models/category_news/category_news_model.dart';
import 'saved_news_service.dart';

@LazySingleton(as: SavedNewsService)
class SavedNewsServiceImpl implements SavedNewsService {
  final SharedPreferences sharedPreferences;
  static const String _key = "saved_news_models";

  SavedNewsServiceImpl(this.sharedPreferences);

  @override
  Future<List<CategoryNewsModel>> getSavedNews() async {
    final jsonString = sharedPreferences.getString(_key);
    if (jsonString == null) return [];

    final List<dynamic> decoded = json.decode(jsonString);
    return decoded
        .map((e) => CategoryNewsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> add(CategoryNewsModel model) async {
    final saved = await getSavedNews();

    final alreadyExists = saved.any((e) => e.id == model.id);
    if (!alreadyExists) {
      final updatedModel = model.copyWith(isSaved: true);
      saved.add(updatedModel);
      await _save(saved);
    }
  }

  @override
  Future<void> remove(String id) async {
    final saved = await getSavedNews();
    saved.removeWhere((e) => e.id == id);
    await _save(saved);
  }

  @override
  Future<bool> isSaved(String id) async {
    final saved = await getSavedNews();
    return saved.any((e) => e.id == id);
  }

  Future<void> _save(List<CategoryNewsModel> list) async {
    final encoded = json.encode(list.map((e) => e.toJson()).toList());
    await sharedPreferences.setString(_key, encoded);
  }
}
