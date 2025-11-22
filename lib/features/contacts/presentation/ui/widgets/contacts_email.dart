import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsEmail extends StatelessWidget {
  const ContactsEmail({super.key, required this.email});

  final String email;

  Future<void> _sendEmail(String? email) async {
    if (email == null || email.isEmpty) return;

    final Uri params = Uri(scheme: 'mailto', path: email);
    final urlEmail = params.toString();

    if (await canLaunchUrl(Uri.parse(urlEmail))) {
      await launchUrl(Uri.parse(urlEmail));
    } else {
      throw 'Could not launch $urlEmail';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _sendEmail(email),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            width: 45,
            height: 45,
            'assets/images/contacts/email.png',
          ),
          Text(
            email,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
