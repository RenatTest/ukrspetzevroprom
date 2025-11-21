import 'package:ukrspetzevroprom/features/about_us/data/data_source/about_us_data_source.dart';
import 'package:ukrspetzevroprom/features/about_us/data/repository/entities/about_us_entity.dart';

abstract interface class AboutUsRepository {
  Future<AboutUsEntity> getAboutUsInfo();
}

class AboutUsRepositoryImpl implements AboutUsRepository {
  AboutUsRepositoryImpl(this.dataSource);

  final AboutUsDataSource dataSource;

  @override
  Future<AboutUsEntity> getAboutUsInfo() async {
    final response = await dataSource.getAboutUsInfo();
    return AboutUsEntity.fromDTO(response);
  }
}
