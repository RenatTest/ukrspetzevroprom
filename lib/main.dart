import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ukrspetzevroprom/di/di.dart';
import 'package:ukrspetzevroprom/features/about_us/data/repository/about_us_repository.dart';
import 'package:ukrspetzevroprom/features/about_us/presentation/cubit/about_us_cubit.dart';
import 'package:ukrspetzevroprom/router/app_router.dart';
import 'package:ukrspetzevroprom/utils/firebase_options.dart';

void main() async {
  initDI();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AboutUsCubit(getIt.get<AboutUsRepository>())..getAboutUsInfo(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}
