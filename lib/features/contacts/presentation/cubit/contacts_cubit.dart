import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ukrspetzevroprom/features/contacts/data/repository/contacts_repository.dart';
import 'package:ukrspetzevroprom/features/contacts/presentation/cubit/contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  ContactsCubit(this._repository) : super(const ContactsState.initial());

  final ContactsRepository _repository;

  Future<void> getContactsInfo() async {
    emit(state.copyWith(status: ContactsStatus.loading));
    try {
      final contactsInfo = await _repository.getContactsInfo();

      emit(
        state.copyWith(
          status: ContactsStatus.loaded,
          contactsInfo: contactsInfo,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: ContactsStatus.error,
          errorMessage: e.toString(),
        ),
      );
      rethrow;
    }
  }
}
