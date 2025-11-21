import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ukrspetzevroprom/core/network/about_us_api/about_us_api_base.dart';
import 'package:ukrspetzevroprom/features/about_us/data/data_source/models/about_us_dto.dart';

class AboutUsFirebaseApi implements AboutUsApi {
  @override
  Future<AboutUsDto> getAboutUsInfo() async {
    try {
      final doc = await FirebaseFirestore.instance
          .collection('about_us')
          .doc('company')
          .get();

      final data = doc.data() as Map<String, dynamic>;
      return AboutUsDto.fromMap(data);
    } catch (e) {
      throw CustomServerError(errorMessage: e.toString());
    }
  }
}

class CustomServerError implements Exception {
  CustomServerError({required this.errorMessage});

  final String errorMessage;

  @override
  String toString() => 'CustomServerError: $errorMessage';
}
