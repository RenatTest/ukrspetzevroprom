import 'package:ukrspetzevroprom/core/network/contacts/contacts_api_base.dart';
import 'package:ukrspetzevroprom/features/contacts/data/data_source/models/contacts_dto.dart';

abstract interface class ContactsDataSource {
  Future<ContactsDto> getContactsInfo();
}

class ContactsDataSourceImpl implements ContactsDataSource {
  ContactsDataSourceImpl(this._api);

  final ContactsApi _api;

  @override
  Future<ContactsDto> getContactsInfo() async {
    final result = await _api.getContactsInfo();

    return result;
  }
}
