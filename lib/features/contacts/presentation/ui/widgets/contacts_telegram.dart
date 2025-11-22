// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class ContactsTelegram extends StatelessWidget {
  const ContactsTelegram({super.key, required this.telegram});

  final String telegram;

  void _opentTelegram(String telegram) async {
    html.window.open(telegram, '');
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
