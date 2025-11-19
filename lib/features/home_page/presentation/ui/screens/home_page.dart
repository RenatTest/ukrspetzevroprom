import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ukrspetzevroprom/router/page_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(spacing: 10, children: [Text('Logo'), Text('Головна')]),
              MediaQuery.of(context).size.width > 440
                  ? Row(
                      spacing: 10,
                      children: [
                        GestureDetector(child: Text('Головна')),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.catalog),
                          child: Text('Каталог'),
                        ),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.aboutUs),
                          child: Text('Про нас'),
                        ),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.news),
                          child: Text('Новини'),
                        ),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.contacts),
                          child: Text('Контакти'),
                        ),
                      ],
                    )
                  : Column(
                      spacing: 10,
                      children: [
                        GestureDetector(child: Text('Головна')),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.catalog),
                          child: Text('Каталог'),
                        ),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.aboutUs),
                          child: Text('Про нас'),
                        ),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.news),
                          child: Text('Новини'),
                        ),
                        GestureDetector(
                          onTap: () => context.goNamed(PageNames.contacts),
                          child: Text('Контакти'),
                        ),
                      ],
                    ),
            ],
          ),

          Center(child: Text('Home Page')),
          Text('BottomBar'),
        ],
      ),
    );
  }
}
