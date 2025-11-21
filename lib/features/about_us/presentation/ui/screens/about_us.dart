import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ukrspetzevroprom/features/about_us/presentation/cubit/about_us_cubit.dart';
import 'package:ukrspetzevroprom/features/about_us/presentation/cubit/about_us_state.dart';
import 'package:ukrspetzevroprom/features/home_page/presentation/ui/widgets/app_bar_custom.dart';
import 'package:ukrspetzevroprom/features/home_page/presentation/ui/widgets/app_drawer.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                spacing: 10,
                children: [
                  Text('ПРО КОМПАНІЮ', style: TextStyle(fontSize: 24)),
                  BlocBuilder<AboutUsCubit, AboutUsState>(
                    builder: (context, state) {
                      return switch (state.status) {
                        AboutUsStatus.initial => const Center(
                          child: Text(
                            'About us data',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),

                        AboutUsStatus.loading => const Center(
                          child: CircularProgressIndicator(),
                        ),

                        AboutUsStatus.loaded => Column(
                          spacing: 10,
                          children: [
                            Text(
                              state.aboutUsInfo.title,
                              style: TextStyle(fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              state.aboutUsInfo.description,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),

                        AboutUsStatus.error => Center(
                          child: Text(
                            state.errorMessage ?? 'Error',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 24),
                          ),
                        ),
                      };
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
