import 'package:flutter/material.dart';

class ContactsText extends StatelessWidget {
  const ContactsText({super.key, required this.text, required this.fontSize});

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize),
      textAlign: TextAlign.center,
    );
  }
}
