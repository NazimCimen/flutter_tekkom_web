import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BaseStateful<T extends StatefulWidget, VM extends ChangeNotifier>
    extends State<T> {
  final VM? proivder;
  BaseStateful({this.proivder});

  VM readViewModel() => Provider.of<VM>(context, listen: false);
  VM watchViewModel() => Provider.of<VM>(context);
  TextTheme get textTheme => Theme.of(context).textTheme;
  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  ThemeData get themeData => Theme.of(context);
  bool isHovered = false;
  final Map<int, bool> _hoverStates = {0: false, 1: false, 2: false};
  Map<int, bool> get hoverStates => _hoverStates;
  void onEnter(int index) {
    setState(() {
      _hoverStates[index] = true;
      isHovered = true;
    });
  }

  void onExit(int index) {
    setState(() {
      _hoverStates[index] = false;
      isHovered = false;
    });
  }
}
