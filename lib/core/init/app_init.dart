import 'package:flutter/material.dart';
import 'package:tekkom_web/main.dart';

abstract class AppInit {
  Future<void> initialize();
  Future<void> run();
  Widget getApp();
}

class AppInitImpl extends AppInit {
  @override
  Widget getApp() {
    return const MyApp();
  }

  @override
  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
  }

  @override
  Future<void> run() async {
    await initialize();
    runApp(getApp());
  }
}
