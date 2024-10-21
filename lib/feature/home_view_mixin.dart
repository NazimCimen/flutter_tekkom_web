import 'package:flutter/material.dart';
import 'package:tekkom_web/feature/home_view.dart';

mixin HomeViewMixin on State<HomeView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> sectionKeys = List.generate(4, (index) => GlobalKey());
  bool isHeaderTransparent = true;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    final firstSectionKey = sectionKeys[0];
    final firstSectionContext = firstSectionKey.currentContext;

    if (firstSectionContext != null) {
      final box = firstSectionContext.findRenderObject() as RenderBox?;
      if (box != null) {
        final position = box.localToGlobal(Offset.zero);

        setState(() {
          isHeaderTransparent = position.dy >= 0;
        });
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
