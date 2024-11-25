import 'package:flutter/material.dart';
import 'package:tekkom_web/product/constants/app_durations.dart';
import 'package:tekkom_web/product/repository/url_repository.dart';

class HeaderProvider extends ChangeNotifier {
  final UrlRepository urlRepository;
  HeaderProvider({required this.urlRepository});
  String? errorMsg;
  bool isHeaderTransparent = true;
  bool resetScrool = false;

  void changeResetScroll(bool value) {
    resetScrool = value;
    notifyListeners();
  }

  void changeHeaderTransparency(bool value) {
    isHeaderTransparent = value;
    notifyListeners();
  }

  Future<void> handleWhatsApp() async {
    final message = await urlRepository.openWhatsApp();
    if (message != null) {
      errorMsg = message;
      notifyListeners();
    }
  }

  Future<void> handleMap() async {
    final message = await urlRepository.openMap();
    if (message != null) {
      errorMsg = message;
      notifyListeners();
    }
  }

  Future<void> handleEmail() async {
    final message = await urlRepository.openEmail();
    if (message != null) {
      errorMsg = message;
      notifyListeners();
    }
  }

  Future<void> snackBarDuration() async {
    await Future<void>.delayed(AppDurations.snackBarDuration);
    errorMsg = null;
    notifyListeners();
  }
}
