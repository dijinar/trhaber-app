// lib/core/services/share/share_service.dart

import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class ShareService {
  /// Genel sistem paylaşımı (Paylaş menüsü açar)
  void shareText(String text) {
    Share.share(text);
  }

  /// WhatsApp ile paylaşım
  Future<void> shareToWhatsApp(String url) async {
    final encoded = Uri.encodeComponent(url);
    final uri = Uri.parse("whatsapp://send?text=$encoded");

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      _showError("WhatsApp is not installed.");
    }
  }

  /// Facebook paylaşımı (Web üzerinden paylaşım sayfası açılır)
  Future<void> shareToFacebook(String url) async {
    final encoded = Uri.encodeComponent(url);
    final uri =
        Uri.parse("https://www.facebook.com/sharer/sharer.php?u=$encoded");

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      _showError("Facebook paylaşımı açılamadı.");
    }
  }

  /// Twitter (X) paylaşımı
  Future<void> shareToX(String url) async {
    final uri = Uri.parse(
        "https://twitter.com/intent/tweet?url=${Uri.encodeComponent(url)}");

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      _showError("Twitter paylaşımı açılamadı.");
    }
  }

  /// Instagram’a direkt link paylaşımı desteklenmiyor.
  /// Yönlendirme yapılabilir ama paylaşım yapamaz.
  void shareToInstagram(String url) {
    _showError(
        "Instagram link paylaşımını desteklemiyor. Sadece medya paylaşımı yapılabilir.");
  }

  void _showError(String message) {
    print("Paylaşım hatası: $message");
  }
}

// Global instance
final shareService = ShareService();
