

import 'package:appointment_app/feature/sign_up/data/models/sign_response_body.dart';
import 'package:appointment_app/feature/sign_up/data/repo/sign_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/sign_request_body.dart';

part 'sign_state.dart';


class SignCubit extends Cubit<SignState> {
  SignCubit(this.signRepo) : super(SignInitial());

  final SignRepo signRepo;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  Future<void> emitSignState(SignRequestBody signRequestBody) async {
    emit(SignLoading());
    final response = await signRepo.userSign(
      SignRequestBody(
        email: emailController.text, 
        password: passwordController.text, 
        phoneNumber: phoneController.text
      )
    );
    response.fold(
      (failure){
        emit(SignFailure(failure.errMessage));
      }, 
      (success){
        emit(SignSuccess(SignResponseBody as SignResponseBody));
      }
    );
  }
}
