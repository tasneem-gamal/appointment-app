import 'package:appointment_app/constants.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/feature/login/ui/widgets/terms_condition_section_login_view.dart';
import 'package:appointment_app/feature/login/ui/widgets/upper_text_title.dart';
import 'package:appointment_app/feature/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:appointment_app/feature/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:appointment_app/feature/sign_up/ui/widgets/form_field_sign_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'sign_up_bloc_listner.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const UpperTextTitle(
              mainTitle: 'Create Account',
              subTitle: "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
            ),
            SizedBox(height: 17.h,),
            const FormFieldSignSection(),
            SizedBox(height: 24.h,),
            CustomButton(
              btnText: 'Sign Up',
              onPressed: (){
                validateThenDoSign(context);
              },
            ),
            SizedBox(height: 50.h,),
            const TermsConditionSection(),
            SizedBox(height: 32.h,),
            const AlreadyHaveAnAccount(),
            const SignUpBlocListner(),
          ],
        ),
      ),
    );
  }

  void validateThenDoSign(BuildContext context){
    if(context.read<SignCubit>().formKey.currentState!.validate()){
      context.read<SignCubit>().emitSignState();
    }
  }
}