import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ukrspetzevroprom/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:ukrspetzevroprom/features/contacts/presentation/cubit/contacts_state.dart';
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                spacing: 10,
                children: [
                  Text('КОНТАКТИ', style: TextStyle(fontSize: 24)),
                  BlocBuilder<ContactsCubit, ContactsState>(
                    builder: (context, state) {
                      return switch (state.status) {
                        ContactsStatus.initial => const Center(
                          child: Text(
                            'Contacts data',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),

                        ContactsStatus.loading => const Center(
                          child: CircularProgressIndicator(),
                        ),

                        ContactsStatus.loaded => Column(
                          spacing: 10,
                          children: [
                            Text(
                              state.contactsInfo.title,
                              style: TextStyle(fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              state.contactsInfo.description,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              state.contactsInfo.email,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              state.contactsInfo.phone,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              state.contactsInfo.telegram,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              state.contactsInfo.viber,
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),

                        ContactsStatus.error => Center(
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
