import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/product/constants/string_constants.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';

class HeaderMobile extends StatelessWidget {
  final void Function(int) sectionNavButton;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool isHeaderTransparent;

  const HeaderMobile({
    required this.sectionNavButton,
    required this.scaffoldKey,
    required this.isHeaderTransparent,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConstantSizes.xLarge.value * 2,
      width: double.maxFinite,
      padding: context.cPaddingSmall * (3 / 2),
      decoration: CustomBoxDecoration.customHeaderDecoration(
        context,
        isHeaderTransparent,
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                scaffoldKey.currentState?.openDrawer();
              },
              child: const Icon(
                Icons.menu_outlined,
              ),
            ),
          ),
          const Spacer(),
          Text(
            StringConstants.appName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
          ),
        ],
      ),
    );
  }
}
