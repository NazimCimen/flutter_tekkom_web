import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:tekkom_web/config/localization/locale_constants.dart';
import 'package:tekkom_web/feature/header/provider/header_provider.dart';
import 'package:tekkom_web/main.dart';
import 'package:tekkom_web/product/service/url_repository.dart';
import 'package:tekkom_web/product/service/url_service.dart';

abstract class AppInit {
  Future<void> initialize();
  Future<void> run();
  Widget getApp();
}

class AppInitImpl extends AppInit {
  @override
  Widget getApp() {
    return EasyLocalization(
      supportedLocales: const [
        LocaleConstants.enLocale,
        LocaleConstants.trLocale,
      ],
      path: LocaleConstants.localePath,
      fallbackLocale: LocaleConstants.trLocale,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HeaderProvider(
              urlRepository: UrlRepository(
                urlService: UrlServiceImpl(),
              ),
            ),
          ),
        ],
        child: const MyApp(),
      ),
    );
  }

  @override
  Future<void> initialize() async {
    await dotenv.load();
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }

  @override
  Future<void> run() async {
    await initialize();
    runApp(getApp());
  }
}
