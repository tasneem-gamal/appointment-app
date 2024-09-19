import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/custom_button.dart';
import 'already_have_account.dart';
import 'form_field_section.dart';
import 'terms_condition_section_login_view.dart';
import 'upper_text_title.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.h, right: 30.h, top: 60.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UpperTextTitle(),
            SizedBox(
              height: 36.h,
            ),
            const FormFieldSection(),
            SizedBox(
              height: 24.h,
            ),
            const CustomButton(btnText: 'Login'),
            SizedBox(height: 32.h),
            const TermsConditionSection(),
            SizedBox(height: 24.h),
            const AlreadyHaveAccountSection()
          ],
        ),
      ),
    );
  }
}


