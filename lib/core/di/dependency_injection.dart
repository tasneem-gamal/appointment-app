import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/feature/login/data/repo/login_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupGetIt(){
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<LoginRepo>(LoginRepo(
    getIt.get<ApiService>()
  ));
}