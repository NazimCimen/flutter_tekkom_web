import 'package:url_launcher/url_launcher.dart';

final class UrlService {
  UrlService._();
  static Future<void> launchWhatsap() async {
    const phone = '+905363017892';
    final Uri url = Uri.parse('https://wa.me/$phone');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'WhatsApp açılamadı';
    }
  }

  static Future<void> launchMail() async {}
  static Future<void> launchMap() async {}
}
