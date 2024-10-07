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
  String encodedDoctorName = Uri.encodeComponent(doctorName);
  final url = '${ApiConstants.baseUrl}${HomeApiConstants.doctorSearch}?name=$encodedDoctorName';
  
  print("Fetching from URL: $url"); // Log the full URL

  try {
    final response = await dio.get(
      url,
      options: Options(
        headers: {
          'Authorization':
              'Bearer ${await SharedPreferenceHelper.getSecuredString(SharedPreferencesKeys.userToken)}',
        },
      ),
    );

    // Check if the response data is a Map
    if (response.data is Map) {
      if (response.data.containsKey('doctors')) {
        // Successfully received a list of doctors
        List<Doctor> doctorsList = (response.data['doctors'] as List)
            .map((doctor) => Doctor.fromJson(doctor))
            .toList();
        return doctorsList;
      } else {
        // Handle case where 'doctors' key does not exist
        throw Exception('Unexpected response format: ${response.data}');
      }
    } else {
      throw Exception('Unexpected response type: ${response.data.runtimeType}');
    }
  } catch (error) {
    print("Error fetching doctors: $error"); // Log error for debugging
    throw Exception('Failed to search doctors: $error');
  }
}


}
