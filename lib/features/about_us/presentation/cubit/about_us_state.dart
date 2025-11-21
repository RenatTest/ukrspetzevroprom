import 'package:ukrspetzevroprom/features/about_us/data/repository/entities/about_us_entity.dart';

class AboutUsState {
  const AboutUsState({
    this.status = AboutUsStatus.initial,
    required this.aboutUsInfo,
    this.errorMessage,
  });

  const AboutUsState.initial()
    : status = AboutUsStatus.loading,
      aboutUsInfo = const AboutUsEntity(title: '', description: ''),
      errorMessage = null;

  final AboutUsStatus status;
  final AboutUsEntity aboutUsInfo;
  final String? errorMessage;

  AboutUsState copyWith({
    AboutUsStatus? status,
    AboutUsEntity? aboutUsInfo,
    String? errorMessage,
  }) {
    return AboutUsState(
      status: status ?? this.status,
      aboutUsInfo: aboutUsInfo ?? this.aboutUsInfo,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

enum AboutUsStatus { initial, loading, loaded, error }
