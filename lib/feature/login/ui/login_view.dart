import 'package:appointment_app/feature/login/ui/widgets/login_view_body.dart';
import 'package:flutter/material.dart';




class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginViewBody()
      ),
    );
  }
}





