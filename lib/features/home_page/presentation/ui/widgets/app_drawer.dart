import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ukrspetzevroprom/features/home_page/presentation/ui/widgets/app_drawer_item.dart';
import 'package:ukrspetzevroprom/router/page_names.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final String? currentRouteName = GoRouterState.of(context).name;

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Drawer(
        backgroundColor: HexColor('#2092cd'),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              AppDrawerItem(
                title: 'Головна',
                route: PageNames.homePage,
                activeRoute: currentRouteName,
              ),
              AppDrawerItem(
                title: 'Каталог',
                route: PageNames.catalog,
                activeRoute: currentRouteName,
              ),
              AppDrawerItem(
                title: 'Про нас',
                route: PageNames.aboutUs,
                activeRoute: currentRouteName,
              ),
              AppDrawerItem(
                title: 'Новини',
                route: PageNames.news,
                activeRoute: currentRouteName,
              ),
              AppDrawerItem(
                title: 'Контакти',
                route: PageNames.contacts,
                activeRoute: currentRouteName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
