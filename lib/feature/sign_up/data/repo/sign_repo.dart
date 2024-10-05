import 'package:appointment_app/feature/sign_up/data/apis/sign_up_api_service.dart';
import 'package:appointment_app/feature/sign_up/data/models/sign_request_body.dart';
import 'package:appointment_app/feature/sign_up/data/models/sign_response_body.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_handling_error.dart';

class SignRepo {
  final SignUpApiService signUpApiService;

  SignRepo(this.signUpApiService);

  

  Future<Either<Failure, SignResponseBody>> userSign(
      SignRequestBody signRequestBody) async {
    try {
      final response = await signUpApiService.signUp(signRequestBody);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure('An unexpected error occurred. Please try again.'));
    }
  }
}