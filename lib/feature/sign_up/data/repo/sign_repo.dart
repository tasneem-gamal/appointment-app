import 'package:appointment_app/feature/sign_up/data/models/sign_request_body.dart';
import 'package:appointment_app/feature/sign_up/data/models/sign_response_body.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_handling_error.dart';
import '../../../../core/networking/api_service.dart';

class SignRepo {
  final ApiService apiService;

  SignRepo(this.apiService);

  Future<Either<Failure, SignResponseBody>> userSign(
      SignRequestBody signRequestBody) async {
    try {
      final response = await apiService.signUp(SignRequestBody as SignRequestBody);
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure('An unexpected error occurred. Please try again.'));
    }
  }
}