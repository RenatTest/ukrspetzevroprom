import 'package:ukrspetzevroprom/features/contacts/data/data_source/models/contacts_dto.dart';

class ContactsEntity {
  const ContactsEntity({
    required this.title,
    required this.description,
    required this.email,
    required this.phone,
    required this.telegram,
    required this.viber,
  });

  factory ContactsEntity.fromDTO(ContactsDto dto) {
    return ContactsEntity(
      title: dto.title,
      description: dto.description,
      email: dto.email,
      phone: dto.phone,
      telegram: dto.telegram,
      viber: dto.viber,
    );
  }
  final String title;
  final String description;
  final String email;
  final String phone;
  final String telegram;
  final String viber;
}
