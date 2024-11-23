import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:tekkom_web/product/env.config.dart';
import 'package:tekkom_web/product/model/mail_model.dart';

abstract class EmailService {
  Future<bool> sendEmailMessage({required MailModel model});
}

class EmailServiceImpl extends EmailService {
  @override
  Future<bool> sendEmailMessage({required MailModel model}) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    try {
      final response = await http.post(
        url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: json.encode(
          {
            'service_id': EnvConfig.serviceId,
            'template_id': EnvConfig.templateId,
            'user_id': EnvConfig.userId,
            'template_params': {
              'from_name': model.name,
              'message': model.msg,
              'user_mail': model.mail,
            },
          },
        ),
      );
      if (response.statusCode == HttpStatus.ok) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
