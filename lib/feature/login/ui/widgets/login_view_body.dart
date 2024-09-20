import 'package:appointment_app/feature/login/data/models/login_request_body.dart';
import 'package:appointment_app/feature/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/feature/login/ui/widgets/login_bloc_listner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_button.dart';
import 'already_have_account.dart';
import 'form_field_section.dart';
import 'terms_condition_section_login_view.dart';
import 'upper_text_title.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  _LoginViewBodyState createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h, right: 30.h, top: 60.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UpperTextTitle(),
            SizedBox(height: 36.h),
            const FormFieldSection(),
            SizedBox(height: 24.h),
            if (errorMessage != null) 
              Text(
                errorMessage!,
                style: TextStyle(color: Colors.red, fontSize: 14.sp),
              ),
            SizedBox(height: 8.h),
            CustomButton(
              btnText: 'Login',
              onPressed: () {
                validateThenDoLogin(context);
              },
            ),
            SizedBox(height: 32.h),
            const TermsConditionSection(),
            SizedBox(height: 24.h),
            const AlreadyHaveAccountSection(),
            const LoginBlocListener()
          ],
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    final formKey = context.read<LoginCubit>().formKey;
    if (formKey.currentState!.validate()) {
      setState(() {
        errorMessage = null; 
      });
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text, 
          password: context.read<LoginCubit>().passwordController.text, 
        )
      );
    } else {
      setState(() {
        errorMessage = 'Please fill in all fields correctly.';
      });
    }
  }
}


