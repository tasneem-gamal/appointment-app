import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/feature/home/data/apis/home_api_constants.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';

class HomeApiService {
  final Dio dio;

  HomeApiService(this.dio);

Future<SpecializationsResponseModel> getSpecialization() async {
  try {
    final response = await dio.get(
      '${ApiConstants.baseUrl}${HomeApiConstants.specilityEndpoint}',
    );
    print(response.data);
    print('API Response: ${response.data}'); 

    if (response.statusCode == 200) {
      return SpecializationsResponseModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load specializations: ${response.statusCode}');
    }
  } catch (error) {
    throw Exception('Failed to load specializations: $error');
  }
}
}