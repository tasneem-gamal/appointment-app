import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/custom_logo_image_text.dart';
import 'widgets/on_boarding_text_and_button.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const CustomOnboardingAppBar(),
              SizedBox(
                height: 30.h,
              ),
              const CustomLogoImageText(),
              const OnboardingTextAndButton()
            ],
          ),
        ),
      ),
    ));
  }
}







