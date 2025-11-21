import 'package:ukrspetzevroprom/features/contacts/data/data_source/models/contacts_dto.dart';

abstract interface class ContactsApi {
  Future<ContactsDto> getContactsInfo();
}
