import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({
    super.key,
    required this.title,
    required this.route,
    required this.activeRoute,
  });

  final String title;
  final String route;
  final String? activeRoute;

  @override
  Widget build(BuildContext context) {
    final bool isActive = activeRoute == route;
    return GestureDetector(
      onTap: () => context.goNamed(route),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: HexColor('FFFFFF'),
          fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
        ),
      ),
    );
  }
}
