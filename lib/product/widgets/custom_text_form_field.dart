import 'package:flutter/material.dart';
import 'package:tekkom_web/product/decorations/input_decorations/custom_input_decoration.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isMainSection;
  const CustomTextFormField({
    required this.controller,
    required this.hintText,
    required this.maxLines,
    required this.validator,
    required this.isMainSection,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      maxLines: maxLines,
      decoration: isMainSection
          ? CustomInputDecoration.filledInputDecoration(
              context: context,
              hintText: hintText,
            )
          : CustomInputDecoration.outlineInputDecoration(
              context: context,
              hintText: hintText,
            ),
    );
  }
}
