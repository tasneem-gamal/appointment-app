

import 'package:appointment_app/feature/login/data/models/login_response_body.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../feature/login/data/models/login_request_body.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}