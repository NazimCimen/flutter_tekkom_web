import 'package:flutter/material.dart';
import 'package:tekkom_web/core/size/app_border_radius_extensions.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/product/widgets/custom_elevated_button.dart';
import 'package:tekkom_web/product/widgets/custom_text_form_field.dart';
import 'package:tekkom_web/responsive/responsive.dart';

class RequestCallbackForm extends StatelessWidget {
  const RequestCallbackForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          left: Responsive.isDesktop(context) ? context.cXLargeValue : 0,
        ),
        child: Container(
          padding: context.cPaddingxLarge,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: context.cBorderRadiusAllLow,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.scrim.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: context.cLargeValue),
              Text(
                'Sizi Arayalım',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: context.cLargeValue),
              CustomTextFormField(
                controller: TextEditingController(),
                labelText: 'Adınız',
                maxLines: 1,
                validator: null,
              ),
              SizedBox(height: context.cMediumValue),
              CustomTextFormField(
                controller: TextEditingController(),
                labelText: 'Telefon Numaranız',
                maxLines: 1,
                validator: null,
              ),
              SizedBox(height: context.cMediumValue),
              CustomTextFormField(
                controller: TextEditingController(),
                labelText: 'E-posta Adresiniz',
                maxLines: 1,
                validator: null,
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
      ),
    );
  }
}
