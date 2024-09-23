import 'package:appointment_app/feature/login/ui/widgets/password_validation.dart';
import 'package:appointment_app/feature/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class FormFieldSignSection extends StatefulWidget {
  const FormFieldSignSection({super.key});

  @override
  State<FormFieldSignSection> createState() => _FormFieldSignSectionState();
}

class _FormFieldSignSectionState extends State<FormFieldSignSection> {
  bool isObsecureText = true;
  bool isPasswordConfirmationObscureText = true;


  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Name', 
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
            controller: context.read<SignCubit>().nameController,
          ),
          SizedBox(height: 16.h,),
          CustomTextFormField(
            hintText: 'phone', 
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            controller: context.read<SignCubit>().phoneController
          ),
          SizedBox(height: 16.h,),
          CustomTextFormField(
            hintText: 'Email', 
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignCubit>().emailController,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextFormField(
            hintText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            controller: context.read<SignCubit>().passwordController,
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
          SizedBox(height: 5.h,),
          PasswordValidation(hasMinLength: hasMinLength),
          SizedBox(height: 16.h,),
          CustomTextFormField(
            controller:
                context.read<SignCubit>().passwordConfirmationController,
            hintText: 'Password Confirmation',
            isObsecureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
