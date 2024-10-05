import 'package:appointment_app/feature/home/data/apis/home_api_service.dart';
import 'package:appointment_app/feature/home/data/repos/home_repo.dart';
import 'package:appointment_app/feature/login/data/apis/login_api_service.dart';
import 'package:appointment_app/feature/login/data/repo/login_repo.dart';
import 'package:appointment_app/feature/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/feature/sign_up/data/apis/sign_up_api_service.dart';
import 'package:appointment_app/feature/sign_up/data/repo/sign_repo.dart';
import 'package:appointment_app/feature/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;
void setupGetIt(){

  //login
  getIt.registerSingleton<LoginApiService>(LoginApiService(Dio()));
  getIt.registerSingleton<LoginRepo>(LoginRepo(
    getIt.get<LoginApiService>()
  ));
  getIt.registerFactory<LoginCubit>(()=> LoginCubit(getIt()));

  //sign
  getIt.registerSingleton<SignUpApiService>(SignUpApiService(Dio()));
  getIt.registerSingleton<SignRepo>(SignRepo(
    getIt.get<SignUpApiService>()
  ));
  getIt.registerFactory<SignCubit>(() => SignCubit(getIt()));

  //home
  getIt.registerSingleton<HomeApiService>(HomeApiService(Dio()));
  getIt.registerSingleton<HomeRepo>(HomeRepo(
    getIt.get<HomeApiService>()
  ));
}