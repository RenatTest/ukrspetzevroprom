import 'package:flutter/material.dart';
import 'package:ukrspetzevroprom/features/home_page/presentation/ui/widgets/app_bar_custom.dart';
import 'package:ukrspetzevroprom/features/home_page/presentation/ui/widgets/app_drawer.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MediaQuery.of(context).size.width <= 700
          ? const AppDrawer()
          : null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppBarCustom(),
          Center(child: Text('Contacts')),
          Container(),
        ],
      ),
    );
  }
}
