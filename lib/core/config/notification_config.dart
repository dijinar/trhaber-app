// lib/core/config/notification_config.dart

import 'dart:convert';
import 'dart:io' show Platform;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

// GEREKLİ IMPORT'LAR
import '../config/app_router.dart';
import '../di/locator.dart';
import '../services/locale/locale_resources_service.dart';

import '../services/pending_notification_service.dart';

// Arka plan mesaj işleyicisi (dosyanın en üstünde veya en altında olması best practice'dir)
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // Firebase zaten main.dart'ta başlatıldığı için burada tekrar başlatmaya gerek yok
  print('Background Message: ${message.messageId}');
}

@singleton
class NotificationConfig {
  late final FirebaseMessaging _firebaseMessaging;
  final FlutterLocalNotificationsPlugin _localNotifications =
      FlutterLocalNotificationsPlugin();

  /// Uygulamanın bildirimle ilgili tüm ayarlarını başlatır.
  /// Bu metod, Firebase/bildirim izinlerini alır, topic'lere abone olur,
  /// ve uygulama kapalıyken gelen bildirimleri yönetmek için gerekli dinleyicileri kurar.
  Future<void> init() async {
    // 1. Firebase Messaging instance'ını başlat
    _firebaseMessaging = FirebaseMessaging.instance;

    // 2. Firebase Messaging için bildirim izinlerini iste
    await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    // 3. Genel "tum_kullanicilar" topic'ine sadece bir kez abone ol
    await _subscribeToGeneralTopicOnce();

    // 4. iOS için ön planda bildirim gösterme ayarları
    if (Platform.isIOS) {
      await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }

    // 5. Uygulama çalışırken (background -> foreground) bildirime tıklama olayını dinle
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

    // 6. Uygulama kapalıyken (cold start) gelen bildirimi yakala ve sakla
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      locator<PendingNotificationService>().setInitialMessage(initialMessage);
      print(
          'Cold start bildirimi SplashPage\'de işlenmek üzere kaydedildi: ${initialMessage.messageId}');
    }

    // 7. Yerel bildirimler için ayarları yap ve tıklama olayını dinle
    _initializeLocalNotifications();

    // 8. Cihazın FCM token'ını al (debug amaçlı)
    await _logDeviceToken();

    // 9. Arka planda (background) mesaj geldiğinde dinle
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // 10. Uygulama açıkken (foreground) mesaj geldiğinde dinle
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
  }

  /// Genel topic'e daha önce abone olunmadıysa abone olur.
  Future<void> _subscribeToGeneralTopicOnce() async {
    final localeResources = locator<LocaleResourcesService>();
    if (!localeResources.isSubscribedToGeneralTopic()) {
      try {
        await FirebaseMessaging.instance.subscribeToTopic('tum_kullanicilar');
        await localeResources.setSubscribedToGeneralTopic(true);
        print(
            'İlk kez "tum_kullanicilar" topic\'ine abone olundu ve durum kaydedildi.');
      } catch (e) {
        print('"tum_kullanicilar" topic\'ine abone olurken hata oluştu: $e');
      }
    } else {
      print('"tum_kullanicilar" topic\'ine zaten abone olunmuş.');
    }
  }

  /// Cihazın FCM token'ını konsola yazdırır.
  Future<void> _logDeviceToken() async {
    try {
      final token = await _firebaseMessaging.getToken();
      print('FCM Token: $token');
    } catch (e) {
      print('FCM token alınırken hata oluştu: $e');
    }
  }

  /// Uygulama ön plandayken gelen bir bildirimi işler.
  /// Android'de yerel bir bildirim gösterir.
  Future<void> _handleForegroundMessage(RemoteMessage message) async {
    print('Foreground Message: ${message.messageId}');
    if (Platform.isAndroid) {
      _showLocalNotification(message);
    }
  }

  /// Bir bildirime (uzak veya yerel) tıklandığında yönlendirme yapar.
  void _handleNotificationTap(RemoteMessage message) {
    print('Bildirime tıklandı: ${message.messageId}');

    final data = message.data;
    String? newsId;

    if (data.containsKey('id')) {
      newsId = data['id'];
    } else if (data.containsKey('url')) {
      newsId = _extractNewsIdFromUrl(data['url']);
    }

    if (newsId != null) {
      print('Yönlendirilecek Haber ID: $newsId');
      // Widget ağacı çizildikten sonra yönlendirme yap
      WidgetsBinding.instance.addPostFrameCallback((_) {
        locator<AppRouter>().push(NewsDetailRoute(newsId: newsId!));
      });
    }
  }

  /// Verilen URL'den haber ID'sini çıkarır.
  String? _extractNewsIdFromUrl(String url) {
    try {
      final regExp = RegExp(r'h([0-9]+)\.html$');
      final match = regExp.firstMatch(url);
      if (match != null && match.groupCount >= 1) {
        return match.group(1);
      }
    } catch (e) {
      print('URL ayrıştırma hatası: $e');
    }
    return null;
  }

  /// Android'de uygulama ön plandayken yerel bildirim göstermek için kullanılır.
  /// Android'de uygulama ön plandayken yerel bildirim göstermek için kullanılır.
  Future<void> _showLocalNotification(RemoteMessage message) async {
    final notification = message.notification;
    if (notification == null) return;

    // --- HATA BURADAYDI, ŞİMDİ DÜZELTİLDİ ---
    // RemoteMessage'i manuel olarak bir Map'e dönüştürüp JSON yapalım.
    final Map<String, dynamic> messageMap = {
      'messageId': message.messageId,
      'data': message.data,
      'notification': message.notification != null
          ? {
              'title': message.notification!.title,
              'body': message.notification!.body,
            }
          : null,
    };
    final payload = jsonEncode(messageMap);
    // --- DÜZELTME BİTTİ ---

    _localNotifications.show(
      notification.hashCode,
      notification.title,
      notification.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'high_importance_channel', // Benzersiz kanal ID'si
          'Yüksek Öncelikli Bildirimler', // Kullanıcıya görünecek kanal adı
          importance: Importance.high,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
      payload: payload,
    );
  }

  /// Yerel bildirim kütüphanesini başlatır ve tıklama dinleyicisini ayarlar.
  void _initializeLocalNotifications() {
    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    _localNotifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        final payload = response.payload;
        if (payload != null && payload.isNotEmpty) {
          try {
            // --- HATA BURADAYDI, ŞİMDİ DÜZELTİLDİ ---
            // Gelen JSON'u manuel olarak oluşturduğumuz Map'e göre parse edelim.
            final messageJson = jsonDecode(payload) as Map<String, dynamic>;

            // Bu bilgileri kullanarak basitleştirilmiş bir RemoteMessage nesnesi oluşturalım.
            // Çünkü RemoteMessage'in constructor'ı private.
            // Sadece yönlendirme için gerekli olan 'data' alanını almamız yeterli.
            final message = RemoteMessage(
              data: Map<String, dynamic>.from(messageJson['data'] ?? {}),
            );
            // --- DÜZELTME BİTTİ ---

            _handleNotificationTap(message);
          } catch (e) {
            print('Yerel bildirim payload işleme hatası: $e');
          }
        }
      },
    );
  }
}
