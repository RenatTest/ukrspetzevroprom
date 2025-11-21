import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ukrspetzevroprom/core/network/about_us_api/firebase/about_us_firebase_api.dart';
import 'package:ukrspetzevroprom/core/network/contacts/contacts_api_base.dart';
import 'package:ukrspetzevroprom/features/contacts/data/data_source/models/contacts_dto.dart';

class ContactsFirebaseApi implements ContactsApi {
  @override
  Future<ContactsDto> getContactsInfo() async {
    try {
      final doc = await FirebaseFirestore.instance
          .collection('contacts')
          .doc('company')
          .get();

      final data = doc.data() as Map<String, dynamic>;
      return ContactsDto.fromMap(data);
    } catch (e) {
      throw CustomServerError(errorMessage: e.toString());
    }
  }
}
