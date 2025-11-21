import 'package:get_it/get_it.dart';
import 'package:ukrspetzevroprom/core/network/about_us_api/firebase/about_us_firebase_api.dart';
import 'package:ukrspetzevroprom/core/network/contacts/firebase/contacts_firebase_api.dart';
import 'package:ukrspetzevroprom/features/about_us/data/data_source/about_us_data_source.dart';
import 'package:ukrspetzevroprom/features/about_us/data/repository/about_us_repository.dart';
import 'package:ukrspetzevroprom/features/contacts/data/data_source/contacts_data_source.dart';
import 'package:ukrspetzevroprom/features/contacts/data/repository/contacts_repository.dart';

final getIt = GetIt.instance;

void initDI() {
  _registerAboutUsRepository();
  _registerContactsRepository();
}

void _registerAboutUsRepository() {
  getIt.registerLazySingleton<AboutUsRepository>(
    () => AboutUsRepositoryImpl(AboutUsDataSourceImpl(AboutUsFirebaseApi())),
  );
}

void _registerContactsRepository() {
  getIt.registerLazySingleton<ContactsRepository>(
    () => ContactsRepositoryImpl(ContactsDataSourceImpl(ContactsFirebaseApi())),
  );
}
