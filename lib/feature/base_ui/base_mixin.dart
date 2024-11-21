import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';
import 'package:tekkom_web/feature/header/provider/header_provider.dart';

mixin BaseScrollMixin<T extends StatefulWidget>
    on BaseStateful<T, ChangeNotifier> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late final ScrollController scrollController;
  final List<GlobalKey> sectionKeys = List.generate(4, (index) => GlobalKey());

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(_scrollListener)
      ..dispose();
    super.dispose();
  }

  void _scrollListener() {
    final firstSectionKey = sectionKeys[0];
    final firstSectionContext = firstSectionKey.currentContext;

    if (firstSectionContext != null) {
      final box = firstSectionContext.findRenderObject() as RenderBox?;
      if (box != null) {
        final position = box.localToGlobal(Offset.zero);
        context
            .read<HeaderProvider>()
            .changeHeaderTransparency(position.dy >= 0);
      }
    }
  }

  void scrollToSection(int sectionIndex) {
    scaffoldKey.currentState?.closeDrawer();
    final key = sectionKeys[sectionIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
