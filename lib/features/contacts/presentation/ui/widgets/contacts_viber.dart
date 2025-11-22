import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsViber extends StatelessWidget {
  const ContactsViber({super.key, required this.viber});

  final String viber;

  void _openViber(String viber) async {
    if (await canLaunchUrl(Uri.parse(viber))) {
      await launchUrl(Uri.parse(viber), mode: LaunchMode.externalApplication);
    }
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
