import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/feature/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/feature/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class FormFieldSection extends StatefulWidget {
  const FormFieldSection({super.key});

  @override
  State<FormFieldSection> createState() => _FormFieldSectionState();
}

class _FormFieldSectionState extends State<FormFieldSection> {
  bool isObsecureText = true;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordListner();
  }
  
  void setupPasswordListner(){
    passwordController.addListener((){
      setState(() {
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            hintText: 'Email',
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              return validateEmail(value); 
            },
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              return validatePassword(value); 
            },
            hintText: 'Password',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(
                isObsecureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isObsecureText: isObsecureText,
          ),
          SizedBox(height: 14.h,),
          PasswordValidation(hasMinLength: hasMinLength),
          SizedBox(height: 14.h),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Forget Password?',
                style: Styles.textStyle12.copyWith(color: ColorsManager.kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password.';
    }
    return null; 
  }

  String? validateEmail(String? value) {
    if (value == null 
          || value.isEmpty 
          || !AppRegex.isEmailValid(value)
        ) {
      return 'Please enter a valid email email.';
    }
    return null; 
  }
}
