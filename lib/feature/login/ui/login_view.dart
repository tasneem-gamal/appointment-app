import 'package:appointment_app/feature/login/ui/widgets/form_field_section.dart';
import 'package:appointment_app/feature/login/ui/widgets/upper_text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.h, right: 30.h, top: 60.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UpperTextTitle(),
                SizedBox(height: 36.h,),
                const FormFieldSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



