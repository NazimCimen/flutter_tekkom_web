import 'package:tekkom_web/product/model/mail_model.dart';
import 'package:tekkom_web/product/service/email_service.dart';

class EmailRepository {
  final EmailService service;
  EmailRepository({required this.service});
  Future<bool> sendMailToService({required MailModel model}) async {
    final response = await service.sendEmailMessage(model: model);
    return response;
  }
}
