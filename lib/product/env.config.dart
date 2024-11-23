import 'dart:html' as html;
import 'dart:js_util' as js_util;

class EnvConfig {
  static final Map<String, String> _config = _loadConfig();

  static Map<String, String> _loadConfig() {
    // window.env'ye JavaScript üzerinden erişiyoruz.
    final env = js_util.getProperty(html.window, 'env');
    if (env != null && env is Map) {
      return Map<String, String>.from(env);
    }
    throw Exception('Environment configuration not found!');
  }

  static String get mapKey => _config['MAP_KEY'] ?? '';
  static String get serviceId => _config['SERVICE_ID'] ?? '';
  static String get templateId => _config['TEMPLATE_ID'] ?? '';
  static String get userId => _config['USER_ID'] ?? '';
}
