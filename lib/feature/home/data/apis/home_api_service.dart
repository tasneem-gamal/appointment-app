import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/feature/home/data/apis/home_api_constants.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';

class HomeApiService {
  final Dio dio;

  HomeApiService(this.dio);

  Future<SpecializationsResponseModel> getSpecialization() async {
    const String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzI3NzgyNDc1LCJleHAiOjE3Mjc4Njg4NzUsIm5iZiI6MTcyNzc4MjQ3NSwianRpIjoiOFFKMGV6SXR2bXNBMmNzYiIsInN1YiI6IjIzNDAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.ekk8Iiq-VsCVVpq0ay-1NEysuFyaiAJyXbWwVtKTnFE';

    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}${HomeApiConstants.specilityEndpoint}',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      return SpecializationsResponseModel.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to load specializations: $error');
    }
  }
}
