import 'package:flutter/material.dart';
import 'package:tekkom_web/config/localization/string_constants.dart';
import 'package:tekkom_web/core/base/base_stateful.dart';
import 'package:tekkom_web/core/size/constant_size.dart';
import 'package:tekkom_web/core/size/padding_extension.dart';
import 'package:tekkom_web/core/utils/app_validators.dart';
import 'package:tekkom_web/feature/contact/mixin/contact_form_view_mixin.dart';
import 'package:tekkom_web/product/decorations/box_decorations/custom_box_decoration.dart';
import 'package:tekkom_web/product/widgets/custom_elevated_button.dart';
import 'package:tekkom_web/product/widgets/custom_text_form_field.dart';

class ContactFormWidget extends StatefulWidget {
  const ContactFormWidget({
    required this.isOnContactPage,
    super.key,
  });
  final bool isOnContactPage;

  @override
  State<ContactFormWidget> createState() => _ContactFormWidgetState();
}

class _ContactFormWidgetState
    extends BaseStateful<ContactFormWidget, ChangeNotifier>
    with ContactFromViewMixin {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: widget.isOnContactPage
            ? context.pageHorizontolPadding(context)
            : context.cPaddingxLarge,
        decoration: CustomBoxDecoration.customBoxDecoration(context),
        child: Form(
          autovalidateMode: validateMode,
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (feedbackMessage != null)
                Padding(
                  padding: context.cPaddingSmall,
                  child: Text(
                    feedbackMessage!,
                    style: TextStyle(
                      color: sendMailSucces
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.secondaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              SizedBox(
                height: widget.isOnContactPage
                    ? context.cXLargeValue * 2.5
                    : context.cLargeValue,
              ),
              SelectableText(
                StringConstants.contact_info_form_button,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: context.cMediumValue),
              CustomTextFormField(
                controller: nameController,
                validator: (value) => AppValidators.nameValidator(value),
                hintText: StringConstants.form_name_hint,
                maxLines: 1,
                isMainSection: false,
              ),
              SizedBox(height: context.cMediumValue),
              CustomTextFormField(
                controller: mailController,
                validator: (value) => AppValidators.emailValidator(value),
                hintText: StringConstants.form_mail_hint,
                maxLines: 1,
                isMainSection: false,
              ),
              SizedBox(height: context.cMediumValue),
              CustomTextFormField(
                controller: msgController,
                validator: (value) => AppValidators.messageValidator(value),
                hintText: StringConstants.form_msg_hint,
                maxLines: 6,
                isMainSection: false,
              ),
              SizedBox(height: context.cLargeValue),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButtonWidget(
                  text: StringConstants.contact_info_form_title,
                  isLoading: isLoading,
                  onPress: () async {
                    await sendMessageButton();
                  },
                ),
              ),
              SizedBox(
                height: widget.isOnContactPage
                    ? context.cXLargeValue * 2.5
                    : context.cMediumValue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
