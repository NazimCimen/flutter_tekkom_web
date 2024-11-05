import 'package:flutter/material.dart';
import 'package:tekkom_web/product/decorations/input_decorations/custom_input_decoration.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final int? maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    required this.controller,
    required this.labelText,
    required this.maxLines,
    required this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      maxLines: maxLines,
      decoration: CustomInputDecoration.inputDecoration(
        context: context,
        labelText: labelText,
      ),
    );
  }
}
