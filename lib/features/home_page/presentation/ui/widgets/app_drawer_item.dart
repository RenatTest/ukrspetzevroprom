import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

class AppDrawerItem extends StatelessWidget {
  const AppDrawerItem({
    super.key,
    required this.title,
    required this.route,
    this.activeRoute,
  });

  final String title;
  final String route;
  final String? activeRoute;

  @override
  Widget build(BuildContext context) {
    final bool isActive = activeRoute == route;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
        if (!isActive) {
          context.goNamed(route);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: HexColor('FFFFFF'),
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
