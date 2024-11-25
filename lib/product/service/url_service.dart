import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/core/error/exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class UrlService {
  const UrlService();
  Future<void> launchWhatsap();
  Future<void> launchMail();
  Future<void> launchMap();
}

class UrlServiceImpl extends UrlService {
  @override
  Future<void> launchWhatsap() async {
    const phone = '+905363017892';
    final url = Uri.parse('https://wa.me/$phone');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw LaunchUrlException('WhatsApp açılamadı');
    }
  }

  @override
  Future<void> launchMap() async {
    const googleMapsUrl =
        'https://www.google.com/maps/search/?api=1&query=38.031198,32.602152';
    final mapUri = Uri.parse(googleMapsUrl);
    if (await canLaunchUrl(mapUri)) {
      await launchUrl(mapUri, mode: LaunchMode.externalApplication);
    } else {
      throw LaunchUrlException('Harita açılamadı');
    }
  }

  @override
  Future<void> launchMail() async {
    final emailUri = Uri(
      scheme: 'mailto',
      path: StringConstants.contact_info_mail,
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw LaunchUrlException('E-posta açılamadı');
    }
  }
}
