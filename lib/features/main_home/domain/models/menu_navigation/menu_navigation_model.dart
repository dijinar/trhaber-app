import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_navigation_model.freezed.dart';

@freezed
class MenuNavigationModel with _$MenuNavigationModel {
  const factory MenuNavigationModel({
    required String title,
    required Map<String, String> items,
    String? id,
    List<MenuNavigationModel>? children,
  }) = _MenuNavigationModel;

  factory MenuNavigationModel.fromJson(Map<String, dynamic> json) {
    final rawItems = json['items'] as Map<String, dynamic>? ?? {};
    final parsedItems = rawItems.map(
      (key, value) => MapEntry(key, value.toString()),
    );
    
    // Alt kategorileri işle
    final List<MenuNavigationModel> childrenList = [];
    if (json['children'] != null) {
      final childrenJson = json['children'] as List<dynamic>;
      for (final child in childrenJson) {
        childrenList.add(MenuNavigationModel.fromJson(child as Map<String, dynamic>));
      }
    }

    return MenuNavigationModel(
      title: json['title'] as String,
      items: parsedItems,
      id: json['id']?.toString(),
      children: childrenList.isEmpty ? null : childrenList,
    );
  }
}
