import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/feature/home/data/apis/home_api_constants.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';

class HomeApiService {
  final Dio dio;

  HomeApiService(this.dio);

  Future<SpecializationsResponseModel> getSpecialization() async {
    // token expires every day
    const String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzI3OTc0ODMwLCJleHAiOjE3MjgwNjEyMzAsIm5iZiI6MTcyNzk3NDgzMCwianRpIjoibG1qS2RsWlI5UWlhUXBnZiIsInN1YiI6IjIzNjIiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.1ne0LsF-VRdFWSawRaqE8XG63PrMotJ6XIe5uqs2OvM';

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
