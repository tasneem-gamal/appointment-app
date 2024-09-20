
import 'package:appointment_app/core/networking/api_handling_error.dart';
import 'package:appointment_app/feature/login/data/models/login_request_body.dart';
import 'package:appointment_app/feature/login/data/models/login_response_body.dart';
import 'package:appointment_app/feature/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginStateInitial());

  final LoginRepo loginRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(LoginStateLoading());
    final respose = await loginRepo.userLogin(loginRequestBody);
    respose.fold((failure) {
      emit(LoginStateFailure(failure.errMessage));
    }, (loginSuccess) {
      emit(LoginStateSuccess(loginSuccess));
    });
  }
}
