import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ukrspetzevroprom/features/about_us/data/repository/about_us_repository.dart';
import 'package:ukrspetzevroprom/features/about_us/presentation/cubit/about_us_state.dart';

class AboutUsCubit extends Cubit<AboutUsState> {
  AboutUsCubit(this._repository) : super(const AboutUsState.initial());

  final AboutUsRepository _repository;

  Future<void> getAboutUsInfo() async {
    emit(state.copyWith(status: AboutUsStatus.loading));
    try {
      final aboutUsInfo = await _repository.getAboutUsInfo();

      emit(
        state.copyWith(status: AboutUsStatus.loaded, aboutUsInfo: aboutUsInfo),
      );
    } catch (e) {
      emit(
        state.copyWith(status: AboutUsStatus.error, errorMessage: e.toString()),
      );
      rethrow;
    }
  }
}
