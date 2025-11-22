import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPhone extends StatelessWidget {
  const ContactsPhone({super.key, required this.phone});

  final String phone;

  void _makePhoneCall(String phoneNumber) async {
    var urlPhone = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(urlPhone)) {
      await launchUrl(urlPhone);
    } else {
      throw 'Could not launch $urlPhone';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _makePhoneCall(phone),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            width: 45,
            height: 45,
            'assets/images/contacts/phone.png',
          ),
          Text(
            phone,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
