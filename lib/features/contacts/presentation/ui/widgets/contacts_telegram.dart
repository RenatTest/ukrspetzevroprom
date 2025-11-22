import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsTelegram extends StatelessWidget {
  const ContactsTelegram({super.key, required this.telegram});

  final String telegram;

  void _opentTelegram(String telegram) async {
    if (await canLaunchUrl(Uri.parse(telegram))) {
      await launchUrl(
        Uri.parse(telegram),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $telegram';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _opentTelegram(telegram),
      child: Image.asset(
        width: 45,
        height: 45,
        'assets/images/contacts/telegram.png',
      ),
    );
  }
}
