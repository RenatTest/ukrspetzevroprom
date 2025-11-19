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
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'catalog',
          name: PageNames.catalog,
          builder: (context, state) => const Catalog(),
        ),
        GoRoute(
          path: 'about-us',
          name: PageNames.aboutUs,
          builder: (context, state) => const AboutUs(),
        ),
        GoRoute(
          path: 'news',
          name: PageNames.news,
          builder: (context, state) => const News(),
        ),
        GoRoute(
          path: 'contacts',
          name: PageNames.contacts,
          builder: (context, state) => const Contacts(),
        ),
      ],
    ),
  ],
);
