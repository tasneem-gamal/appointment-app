import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/feature/login/data/models/login_request_body.dart';
import 'package:appointment_app/feature/login/data/models/login_response_body.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  Future<LoginResponseBody> login(LoginRequestBody loginRequestBody) async {
    final response = await dio.post(
      '${ApiConstants.baseUrl}${ApiConstants.login}',
      data: loginRequestBody.toJson()
    );
    return LoginResponseBody.fromJson(response.data);
  }
}