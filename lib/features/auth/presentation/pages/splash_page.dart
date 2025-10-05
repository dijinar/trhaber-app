import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// YENİ IMPORT'LAR
import 'package:trnews/core/services/pending_notification_service.dart';
import 'package:trnews/core/config/app_router.dart';
// -----
import 'package:trnews/features/shared/widgets/logo.dart';
import '../../../../core/di/locator.dart';
import '../../domain/repositories/auth_repository.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final AuthRepository _authRepository = locator<AuthRepository>();

  @override
  void initState() {
    super.initState();
    _initAuthLogic();
  }

  // --- BU METODU GÜNCELLİYORUZ ---
  Future<void> _initAuthLogic() async {
    // 1. ÖNCE KİMLİK DOĞRULAMA İŞLEMLERİ YAPILIR
    final isExpired = await _authRepository.isTokenExpired();
    if (isExpired) {
      await _authRepository.createToken();
    }
    // Artık token'ımızın kesinlikle hazır olduğundan eminiz.

    // 2. KISA BİR BEKLEME (Görsel amaçlı, isteğe bağlı)
    await Future.delayed(const Duration(seconds: 2));

    // 3. YÖNLENDİRME KARARI BURADA VERİLİR
    if (!mounted) return; // Widget ağaçtan kaldırıldıysa işlem yapma

    // Bekleyen bir bildirim var mı diye kontrol et
    final pendingNotificationService = locator<PendingNotificationService>();
    final message = pendingNotificationService.consumeInitialMessage();

    final appRouter = context.router; // veya locator<AppRouter>()

    if (message != null) {
      // EVET, BİLDİRİM VAR -> HABER DETAYINA GİT
      print("SplashPage: Bekleyen bildirim işleniyor: ${message.messageId}");

      final data = message.data;
      String? newsId =
          _extractNewsIdFromData(data); // Yardımcı fonksiyon kullandık

      if (newsId != null) {
        appRouter.replace(NewsDetailRoute(newsId: newsId));
      } else {
        // ID bulunamazsa yine de ana sayfaya git
        appRouter.replace(const MainHomeRoute());
      }
    } else {
      // HAYIR, BİLDİRİM YOK -> NORMAL ŞEKİLDE ANA SAYFAYA GİT
      print("SplashPage: Bekleyen bildirim yok, ana sayfaya yönlendiriliyor.");
      appRouter.replace(const MainHomeRoute());
    }
  }

  // Yardımcı fonksiyonu buraya ekleyelim
  String? _extractNewsIdFromData(Map<String, dynamic> data) {
    if (data.containsKey('id')) {
      return data['id'];
    } else if (data.containsKey('url')) {
      try {
        final url = data['url'] as String;
        final RegExp regExp = RegExp(r'h([0-9]+)\.html$');
        final match = regExp.firstMatch(url);
        if (match != null && match.groupCount >= 1) {
          return match.group(1);
        }
      } catch (e) {
        print('URL ayrıştırma hatası: $e');
      }
    }
    return null;
  }
  // --- GÜNCELLEME BİTTİ ---

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: _LogoWidget(
          size: 100,
        ),
      ),
    );
  }
}

// _LogoWidget aynı kalabilir...
class _LogoWidget extends StatelessWidget {
  final double size;

  const _LogoWidget({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).primaryColor,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
