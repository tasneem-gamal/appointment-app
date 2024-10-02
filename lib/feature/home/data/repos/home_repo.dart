import 'package:appointment_app/core/networking/api_handling_error.dart';
import 'package:appointment_app/feature/home/data/apis/home_api_service.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepo {
  final HomeApiService homeApiService;

  HomeRepo(this.homeApiService);

  Future<Either<Failure, SpecializationsResponseModel>> getSpecialization() async {
  try {
    final response = await homeApiService.getSpecialization();
    return right(response);
  } catch (e) {
    print('Error fetching specializations: $e'); // Add logging here
    return left(ServerFailure('An unexpected error occurred. Please try again.'));
  } 
}

}