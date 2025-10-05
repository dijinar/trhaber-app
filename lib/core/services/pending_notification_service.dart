import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PendingNotificationService {
  RemoteMessage? _initialMessage;

  void setInitialMessage(RemoteMessage? message) {
    _initialMessage = message;
  }

  // Mesajı tüketir (alır ve temizler)
  RemoteMessage? consumeInitialMessage() {
    final message = _initialMessage;
    _initialMessage = null;
    return message;
  }
}
