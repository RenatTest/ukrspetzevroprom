// ignore_for_file: avoid_web_libraries_in_flutter
import 'package:flutter/material.dart';
// ignore: deprecated_member_use
import 'dart:html' as html;

class ContactsViber extends StatelessWidget {
  const ContactsViber({super.key, required this.viber});

  final String viber;

  void _openViber(String viber) async {
    html.window.open(viber, '');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openViber(viber),
      child: Image.asset(
        width: 45,
        height: 45,
        'assets/images/contacts/viber.png',
      ),
    );
  }
}
