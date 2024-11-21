import 'package:tekkom_web/product/services/url_service.dart';

class UrlRepository {
  final UrlService urlService;

  UrlRepository({required this.urlService});

  Future<String?> openWhatsApp() async {
    try {
      await urlService.launchWhatsap();
      return null;
    } catch (e) {
      return 'WhatsApp açılamadı: $e';
    }
  }

  Future<String?> openMap() async {
    try {
      await urlService.launchMap();
      return null;
    } catch (e) {
      return 'Harita açılamadı: $e';
    }
  }

  Future<String?> openEmail() async {
    try {
      await urlService.launchMail();
      return null;
    } catch (e) {
      return 'E-posta açılamadı: $e';
    }
  }
}
