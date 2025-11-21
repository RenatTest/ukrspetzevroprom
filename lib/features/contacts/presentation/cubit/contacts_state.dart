import 'package:ukrspetzevroprom/features/contacts/data/repository/entities/contacts_entity.dart';

class ContactsState {
  const ContactsState({
    this.status = ContactsStatus.initial,
    required this.contactsInfo,
    this.errorMessage,
  });

  const ContactsState.initial()
    : status = ContactsStatus.loading,
      contactsInfo = const ContactsEntity(
        title: '',
        description: '',
        email: '',
        phone: '',
        telegram: '',
        viber: '',
      ),
      errorMessage = null;

  final ContactsStatus status;
  final ContactsEntity contactsInfo;
  final String? errorMessage;

  ContactsState copyWith({
    ContactsStatus? status,
    ContactsEntity? contactsInfo,
    String? errorMessage,
  }) {
    return ContactsState(
      status: status ?? this.status,
      contactsInfo: contactsInfo ?? this.contactsInfo,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

enum ContactsStatus { initial, loading, loaded, error }
