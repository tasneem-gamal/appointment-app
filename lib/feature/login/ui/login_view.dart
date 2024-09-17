import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/feature/login/ui/widgets/form_field_section.dart';
import 'package:appointment_app/feature/login/ui/widgets/login_view_body.dart';
import 'package:appointment_app/feature/login/ui/widgets/upper_text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/sign_in_with_divider.dart';
import 'widgets/terms_condition_section_login_view.dart';



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





