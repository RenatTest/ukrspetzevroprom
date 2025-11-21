import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ukrspetzevroprom/features/about_us/presentation/ui/screens/about_us.dart';
import 'package:ukrspetzevroprom/features/catalog/presentation/ui/screens/catalog.dart';
import 'package:ukrspetzevroprom/features/contacts/presentation/ui/screens/contacts.dart';
import 'package:ukrspetzevroprom/features/home_page/presentation/ui/screens/home_page.dart';
import 'package:ukrspetzevroprom/features/news/presentation/ui/screens/news.dart';
import 'package:ukrspetzevroprom/router/page_names.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: PageNames.homePage,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          child: const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      },
      routes: [
        GoRoute(
          path: 'catalog',
          name: PageNames.catalog,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const Catalog(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
            );
          },
        ),
        GoRoute(
          path: 'about-us',
          name: PageNames.aboutUs,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const AboutUs(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
            );
          },
        ),
        GoRoute(
          path: 'news',
          name: PageNames.news,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const News(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
            );
          },
        ),
        GoRoute(
          path: 'contacts',
          name: PageNames.contacts,
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              child: const Contacts(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset.zero,
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
            );
          },
        ),
      ],
    ),
  ],
);
