import 'package:appointment_app/core/helpers/extension.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_loading_indicator.dart';
import 'package:appointment_app/feature/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';

class SignUpBlocListner extends StatelessWidget {
  const SignUpBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignCubit, SignState>(
      listenWhen: (previous, current) => 
      current is SignLoading 
      || current is SignSuccess ||
      current is SignFailure,
      listener: (context, state){
        if(state is SignLoading){
          showDialog(
            context: context, 
            builder: (context) => const CustomLoadingIndicator()
          );
        } else if (state is SignSuccess){
          context.pop();
          showSuccessDialog(context);
        } else if(state is SignFailure){
          setupErrorState(context, state.errMessage);
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  dynamic showSuccessDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Signup Successful'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('Congratulations, you have signed up successfully!'),
                ],
              ),
            ),
            actions: [
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  disabledForegroundColor: Colors.grey.withOpacity(0.38),
                ),
                onPressed: () {
                  context.pushNamed(Routes.loginView);
                },
                child: const Text('Continue'),
              )
            ],
          );
        });
  }

    void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: Styles.textStyle14,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: Styles.textStyle14,
            ),
          ),
        ],
      ),
    );
  }
}