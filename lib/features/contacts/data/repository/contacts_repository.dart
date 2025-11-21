import 'package:ukrspetzevroprom/features/contacts/data/data_source/contacts_data_source.dart';
import 'package:ukrspetzevroprom/features/contacts/data/repository/entities/contacts_entity.dart';

abstract interface class ContactsRepository {
  Future<ContactsEntity> getContactsInfo();
}

class ContactsRepositoryImpl implements ContactsRepository {
  ContactsRepositoryImpl(this.dataSource);

  final ContactsDataSource dataSource;

  @override
  Future<ContactsEntity> getContactsInfo() async {
    final response = await dataSource.getContactsInfo();
    return ContactsEntity.fromDTO(response);
  }
}
