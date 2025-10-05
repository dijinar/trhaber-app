import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:trnews/core/constants/endpoints.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:io' show Platform;

import '../../../../core/models/failure/failure.dart';
import '../../../../core/services/network/network_service.dart';
import '../../domain/models/menu_navigation/menu_navigation_model.dart';
import '../../domain/repositories/menu_repository.dart';

@LazySingleton(as: MenuRepository)
class MenuRepositoryImpl implements MenuRepository {
  final NetworkService networkService;
  late final FirebaseMessaging _firebaseMessaging;

  MenuRepositoryImpl(this.networkService) {
    // Firebase başlatıldıktan sonra bu sınıf kullanılacağı için
    // FirebaseMessaging instance'ını burada güvenle alabiliriz
    _firebaseMessaging = FirebaseMessaging.instance;
  }

  @override
  Future<Either<Failure, List<MenuNavigationModel>>> getMenu() async {
    final result = await networkService.get(Endpoints.menu);

    return result.fold(
      (failure) => left(failure),
      (response) {
        try {
          final dataList = response.data?['data'] as List<dynamic>? ?? [];
          final contents = dataList
              .map((e) =>
                  MenuNavigationModel.fromJson(e as Map<String, dynamic>))
              .toList();

          // Menü kategorilerine abone ol
          _subscribeToCategories(contents);

          return right(contents);
        } catch (e) {
          return const Left(Failure.parsingError('Menu verisi çözümlenemedi'));
        }
      },
    );
  }

  /// Konu ismini Firebase'in kabul edeceği formata dönüştürür.
  String _normalizeTopicName(String name) {
    return name
        .replaceAll(' ', '_')
        .replaceAll('ı', 'i')
        .replaceAll('İ', 'i')
        .replaceAll('ü', 'u')
        .replaceAll('Ü', 'u')
        .replaceAll('ö', 'o')
        .replaceAll('Ö', 'o')
        .replaceAll('ğ', 'g')
        .replaceAll('Ğ', 'g')
        .replaceAll('ş', 's')
        .replaceAll('Ş', 's')
        .replaceAll('ç', 'c')
        .replaceAll('Ç', 'c')
        .toLowerCase()
        // Firebase'in izin verdiği karakterler dışındakileri temizle
        .replaceAll(RegExp(r'[^a-z0-9_.-]'), '');
  }

  /// Menü kategorilerine bildirim aboneliği yapar
  void _subscribeToCategories(List<MenuNavigationModel> categories) async {
    try {
      // iOS için önce APNS token kontrolü yap
      if (Platform.isIOS) {
        final apnsToken = await _firebaseMessaging.getAPNSToken();
        if (apnsToken == null) {
          print('APNS token henüz hazır değil. Kategorilere abone olunamadı.');
          return; // APNS token yoksa abonelik işlemini yapma
        }
      }

      // Kategorilere abone ol
      for (final category in categories) {
        // Kategori başlığını kullanarak bir topic oluştur
        final topicName = 'category_${_normalizeTopicName(category.title)}';
        try {
          await _firebaseMessaging.subscribeToTopic(topicName);
          print('$topicName konusuna abone olundu');
        } catch (e) {
          print('$topicName konusuna abone olma hatası: $e');
        }

        // Kategori içindeki öğelere de abone ol
        if (category.items.isNotEmpty) {
          for (final entry in category.items.entries) {
            final itemTopicName = 'item_${_normalizeTopicName(entry.key)}';
            try {
              await _firebaseMessaging.subscribeToTopic(itemTopicName);
              print('$itemTopicName konusuna abone olundu');
            } catch (e) {
              print('$itemTopicName konusuna abone olma hatası: $e');
            }
          }
        }
      }
    } catch (e) {
      print('Kategorilere abone olma işlemi sırasında genel hata: $e');
    }
  }
}
