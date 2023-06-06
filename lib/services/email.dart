import 'dart:developer';
import 'dart:io';

import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class EmailService {
  final String _username = 'contact@cruxtech.in';
  final _smtpServer = SmtpServer('smtp.hostinger.com',
      port: 587, username: 'contact@cruxtech.in', password: "A1B2C3d4@");

  Future<bool> sendEmail(
      {String? subject,
      String? description,
      String? email,
      String? name,
      String? html}) async {
    log("Sending email to $email");
    final message = Message()
      ..from = Address(_username, name ?? 'Team Crux')
      // ..recipients.add("contact@crux.center")
      ..recipients.add("vineetkaimau@gmail.com")
      ..subject = subject ?? 'Congratulations! new business idea from $email'
      ..text = description
      ..html = html;

    try {
      final sendReport = await send(message, _smtpServer);
      log('Message sent: ' + sendReport.toString());
      return true;
    } on MailerException catch (e) {
      log('Message not sent.');
      for (var p in e.problems) {
        log('Problem: ${p.code}: ${p.msg}');
      }
      return false;
    } catch (e) {
      log('Message not sent.$e');
      return false;
    }
  }

  Future<bool> sendEmailWithAttachment(String email, List<File> files,
      {String? subject,
      String? description,
      String? name,
      String? html}) async {
    final message = Message()
      ..from = Address(_username, name ?? 'Team Crux')
      ..recipients.add(email)
      ..subject = subject ?? 'Congratulations!'
      ..text = description ?? ""
      ..html = html
      ..attachments.addAll(files.map((e) => FileAttachment(e)));

    try {
      final sendReport = await send(message, _smtpServer);
      log('Message sent: ' + sendReport.toString());
      return true;
    } on MailerException catch (e) {
      log('Message not sent.');
      for (var p in e.problems) {
        log('Problem: ${p.code}: ${p.msg}');
      }
      return false;
    } catch (e) {
      log('Message not sent.$e');
      return false;
    }
  }
}
