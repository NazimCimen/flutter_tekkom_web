import 'dart:convert';
import 'dart:io';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
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
          'origin': 'https://tekurt-test-app.netlify.app/',
          'Content-Type': 'application/json',
        },
        body: json.encode(
          {
            'service_id': dotenv.env['SERVICE_ID'],
            'template_id': dotenv.env['TEMPLATE_ID'],
            'user_id': dotenv.env['USER_ID'],
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
