import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ukrspetzevroprom/features/home_page/presentation/ui/widgets/app_bar_item.dart';
import 'package:ukrspetzevroprom/router/page_names.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width <= 720;
    final String? currentRouteName = GoRouterState.of(context).name;

    return Container(
      color: HexColor('#2092cd'),
      height: isMobile ? 60 : 100,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 10,
              children: [
                Image.asset(
                  width: isMobile ? 45 : 90,
                  height: isMobile ? 45 : 90,
                  'assets/images/main_logo.png',
                ),
                Text(
                  'Укрспецєвропром',
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 25,
                    color: HexColor('FFFFFF'),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            if (!isMobile)
              Row(
                spacing: 10,
                children: [
                  AppBarItem(
                    title: 'Головна',
                    route: PageNames.homePage,
                    activeRoute: currentRouteName,
                  ),
                  AppBarItem(
                    title: 'Каталог',
                    route: PageNames.catalog,
                    activeRoute: currentRouteName,
                  ),
                  AppBarItem(
                    title: 'Про нас',
                    route: PageNames.aboutUs,
                    activeRoute: currentRouteName,
                  ),
                  AppBarItem(
                    title: 'Новини',
                    route: PageNames.news,
                    activeRoute: currentRouteName,
                  ),
                  AppBarItem(
                    title: 'Контакти',
                    route: PageNames.contacts,
                    activeRoute: currentRouteName,
                  ),
                ],
              )
            else
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: Icon(Icons.menu, color: HexColor('FFFFFF')),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
