import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/custom_button.dart';

class OnboardingTextAndButton extends StatelessWidget {
  const OnboardingTextAndButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 20.h),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            style: Styles.textStyle12
                .copyWith(color: ColorsManager.kGreytextColor),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h,),
          const CustomButton(
            btnText: 'Get Started',
          )
        ],
      ),
    );
  }
}