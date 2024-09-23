

import 'package:appointment_app/feature/sign_up/data/models/sign_response_body.dart';
import 'package:appointment_app/feature/sign_up/data/repo/sign_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/sign_request_body.dart';

part 'sign_state.dart';


class SignCubit extends Cubit<SignState> {
  SignCubit(this.signRepo) : super(SignInitial());

  final SignRepo signRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  Future<void> emitSignState() async {
    emit(SignLoading());
    final response = await signRepo.userSign(
      SignRequestBody(
        name: nameController.text, 
        email: emailController.text, 
        gender: 0, 
        password: passwordController.text, 
        passwordConfirmation: passwordConfirmationController.text, 
        phoneNumber: phoneController.text
      )
    );
    response.fold(
      (failure){
        emit(SignFailure(failure.errMessage));
      }, 
      (success){
        emit(SignSuccess(success));
      }
    );
  }
}
