import 'package:equatable/equatable.dart';

class MailModel extends Equatable {
  final String? name;
  final String? mail;
  final String? msg;

  const MailModel({this.mail, this.msg, this.name});
  @override
  List<Object?> get props => [name, msg, name];

  MailModel copyWith(
    String? name,
    String? mail,
    String? msg,
  ) =>
      MailModel(
        mail: mail ?? this.mail,
        msg: msg ?? this.msg,
        name: name ?? this.name,
      );
}
