import 'package:ukrspetzevroprom/features/about_us/data/data_source/models/about_us_dto.dart';

class AboutUsEntity {
  const AboutUsEntity({required this.title, required this.description});

  factory AboutUsEntity.fromDTO(AboutUsDto dto) {
    return AboutUsEntity(title: dto.title, description: dto.description);
  }
  final String title;
  final String description;
}
