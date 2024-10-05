import 'package:appointment_app/feature/login/data/apis/login_api_constants.dart';
import 'package:appointment_app/feature/login/data/models/login_request_body.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/login_response_body.dart';

class LoginApiService {
  final Dio dio;

  LoginApiService(this.dio);

  Future<LoginResponseBody> login(LoginRequestBody loginRequestBody) async {
    final response = await dio.post(
        '${ApiConstants.baseUrl}${LoginApiConstants.login}',
        data: loginRequestBody.toJson());
    return LoginResponseBody.fromJson(response.data);
  }
}