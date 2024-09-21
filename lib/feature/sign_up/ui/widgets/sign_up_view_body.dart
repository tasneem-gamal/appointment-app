import 'package:appointment_app/feature/login/ui/widgets/upper_text_title.dart';
import 'package:appointment_app/feature/sign_up/ui/widgets/form_field_sign_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h, right: 30.h, top: 60.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const UpperTextTitle(
              mainTitle: 'Create Account',
              subTitle: "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
            ),
            SizedBox(height: 17.h,),
            const FormFieldSignSection()
          ],
        ),
      ),
    );
  }
}