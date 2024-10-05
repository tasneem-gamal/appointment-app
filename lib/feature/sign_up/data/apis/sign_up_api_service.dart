import 'package:appointment_app/feature/sign_up/data/apis/sign_up_api_constants.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/sign_request_body.dart';
import '../models/sign_response_body.dart';

class SignUpApiService {
  final Dio dio;

  SignUpApiService(this.dio);

  Future<SignResponseBody> signUp(SignRequestBody signRequestBody) async {
    final response = await dio.post(
        '${ApiConstants.baseUrl}${SignUpApiConstants.signUp}',
        data: signRequestBody.toJson());
    return SignResponseBody.fromJson(response.data);
  }
}