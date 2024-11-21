import 'dart:convert';
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

abstract class ContactUsService {
  Future<bool> sendEmailMessage({
    required String name,
    required String msg,
    required String mail,
  });
}

class ContactUsServiceImpl extends ContactUsService {
  @override
  Future<bool> sendEmailMessage({
    required String name,
    required String msg,
    required String mail,
  }) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json',
      },
      body: json.encode(
        {
          'service_id': dotenv.env['SERVICE_ID'],
          'template_id': dotenv.env['TEMPLATE_ID'],
          'user_id': dotenv.env['USER_ID'],
          'template_params': {
            'from_name': name,
            'message': msg,
            'user_mail': mail,
          },
        },
      ),
    );
    if (response.statusCode == HttpStatus.ok) {
      return true;
    } else {
      return false;
    }
  }
}
