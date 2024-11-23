import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/product/constants/custom_shadows.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class SectionBackgroundWidget extends StatelessWidget {
  const SectionBackgroundWidget({
    required this.title,
    required this.desc,
    required this.bgImagePath,
    super.key,
  });
  final String title;
  final String desc;
  final String bgImagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.getWidth(context),
      height: ConstantSizes.smallPageHeight.value / 1.3,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              bgImagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Theme.of(context).colorScheme.scrim.withOpacity(0.4),
            ),
          ),
          Align(
            child: Padding(
              padding: context.cPaddingMedium,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SelectableText(
                    title,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: Theme.of(context).colorScheme.surface,
                          fontWeight: FontWeight.bold,
                          shadows: CustomShadows.customLowShadow(context),
                        ),
                  ),
                  SelectableText(
                    textAlign: TextAlign.center,
                    desc,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontStyle: FontStyle.italic,
                          color: Theme.of(context).colorScheme.tertiary,
                          shadows: CustomShadows.customLowShadow(context),
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
