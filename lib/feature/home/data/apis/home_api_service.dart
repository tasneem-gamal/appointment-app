import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/feature/home/data/apis/home_api_constants.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:dio/dio.dart';

class HomeApiService {
  final Dio dio;

  HomeApiService(this.dio);

  Future<SpecializationResponseModel> getSpecialization() async{
    final response = await dio.get(
      '${ApiConstants.baseUrl}${HomeApiConstants.specilityEndpoint}'
    );
    return SpecializationResponseModel.fromJson(response.data);
  }
}