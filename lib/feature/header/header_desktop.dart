import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/product/constants/feature_items.dart';
import 'package:tekkom_web/product/constants/string_constants.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';
import 'package:tekkom_web/product/widgets/custom_button.dart';

class HeaderDesktop extends StatelessWidget {
  final void Function(int) sectionNavButton;
  final bool isHeaderTransparent;
  const HeaderDesktop({
    required this.sectionNavButton,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringConstants.appName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
          ),
          const Spacer(),
          for (int i = 0; i < FeatureItems.drawerItems.length; i++)
            CustomButton(
              text: FeatureItems.drawerItems[i].text,
              onPressed: () {
                sectionNavButton(i);
              },
              isFocused: false,
            ),
        ],
      ),
    );
  }
}
