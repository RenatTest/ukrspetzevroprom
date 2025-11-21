import 'package:ukrspetzevroprom/features/about_us/data/data_source/models/about_us_dto.dart';

abstract interface class AboutUsApi {
  Future<AboutUsDto> getAboutUsInfo();
}
