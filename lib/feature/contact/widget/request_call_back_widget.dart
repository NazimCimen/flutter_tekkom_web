import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';
import 'package:tekkom_web/product/widgets/custom_elevated_button.dart';
import 'package:tekkom_web/product/widgets/custom_text_form_field.dart';

class RequestCallbackForm extends StatelessWidget {
  const RequestCallbackForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: context.cPaddingxLarge,
        decoration: CustomBoxDecoration.customBoxDecoration(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: context.cLargeValue),
            Text(
              'İletişim Formu',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(height: context.cLargeValue),
            CustomTextFormField(
              controller: TextEditingController(),
              hintText: 'İsim Soyisim',
              maxLines: 1,
              validator: null,
              isMainSection: true,
            ),
            SizedBox(height: context.cMediumValue),
            CustomTextFormField(
              controller: TextEditingController(),
              hintText: 'E-posta adresiniz',
              maxLines: 1,
              validator: null,
              isMainSection: true,
            ),
            SizedBox(height: context.cMediumValue),
            CustomTextFormField(
              controller: TextEditingController(),
              hintText: 'Mesajınız',
              maxLines: 4,
              validator: null,
              isMainSection: true,
            ),
            SizedBox(height: context.cLargeValue),
            SizedBox(
              width: double.infinity,
              child: CustomElevatedButtonWidget(
                text: 'TALEBİ GÖNDER',
                onPress: () {},
              ),
            ),
            SizedBox(height: context.cLargeValue),
          ],
        ),
      ),
    );
  }
}
