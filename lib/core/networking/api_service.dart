import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/feature/sign_up/data/models/sign_request_body.dart';
import 'package:appointment_app/feature/sign_up/data/models/sign_response_body.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  

  Future<SignResponseBody> signUp(SignRequestBody signRequestBody) async {
    final response = await dio.post(
        '${ApiConstants.baseUrl}${ApiConstants.signUp}',
        data: signRequestBody.toJson());
    return SignResponseBody.fromJson(response.data);
  }
}
