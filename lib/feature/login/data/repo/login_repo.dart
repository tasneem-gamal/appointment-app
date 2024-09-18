import 'package:appointment_app/core/networking/api_handling_error.dart';
import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/feature/login/data/models/login_request_body.dart';
import 'package:appointment_app/feature/login/data/models/login_response_body.dart';
import 'package:dartz/dartz.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<Either<Failure, LoginResponseBody>> userLogin(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return right(response);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
