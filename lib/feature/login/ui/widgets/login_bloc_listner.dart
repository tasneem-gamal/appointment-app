import 'package:appointment_app/core/helpers/extension.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appointment_app/feature/login/logic/login_cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginStateLoading ||
          current is LoginStateSuccess ||
          current is LoginStateFailure,
      listener: (context, state) {
        if (state is LoginStateLoading) {
          _showLoadingIndicator(context);
        } else if (state is LoginStateSuccess) {
          _dismissLoadingIndicator(context);
          context.pop();
          context.pushNamed(Routes.homeView);
        } else if (state is LoginStateFailure) {
          _dismissLoadingIndicator(context);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errMessage))
          );
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void _showLoadingIndicator(BuildContext context) {
    if (ModalRoute.of(context)?.isCurrent == true) {
      showDialog(
        context: context,
        builder: (context) => const CustomLoadingIndicator(),
        barrierDismissible: false,
      );
    }
  }

  void _dismissLoadingIndicator(BuildContext context) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
