import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/feature/home/data/apis/home_api_constants.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../core/helpers/shared_preference.dart';

class HomeApiService {
  final Dio dio;

  HomeApiService(this.dio);

  Future<SpecializationsResponseModel> getSpecialization() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${HomeApiConstants.specilityEndpoint}',
        options: Options(
          headers: {
            'Authorization': 'Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}',
          },
        ),
      );

      return SpecializationsResponseModel.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to load specializations: $error');
    }
  }

  Future<List<Doctor>> getDoctorsBySearch(String doctorName) async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${HomeApiConstants.doctorSearch}?name=$doctorName',
        options: Options(
          headers: {
            'Authorization':
                'Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}',
          },
        ),
      );
      
      List<Doctor> doctorsList = (response.data['data'] as List)
          .map((doctor) => Doctor.fromJson(doctor))
          .toList();
      return doctorsList;
    } catch (e) {
      throw Exception('Failed to search doctors: $e');
    }
  }


}
