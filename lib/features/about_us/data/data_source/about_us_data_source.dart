import 'package:ukrspetzevroprom/core/network/about_us_api/about_us_api_base.dart';
import 'package:ukrspetzevroprom/features/about_us/data/data_source/models/about_us_dto.dart';

abstract interface class AboutUsDataSource {
  Future<AboutUsDto> getAboutUsInfo();
}

class AboutUsDataSourceImpl implements AboutUsDataSource {
  AboutUsDataSourceImpl(this._api);

  final AboutUsApi _api;

  @override
  Future<AboutUsDto> getAboutUsInfo() async {
    final result = await _api.getAboutUsInfo();

    return result;
  }
}
