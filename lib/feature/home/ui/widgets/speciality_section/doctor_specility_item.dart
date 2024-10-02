import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class DoctorSpecilityItem extends StatelessWidget {
  const DoctorSpecilityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: ColorsManager.kNotifiBackgroundGrey,
          child: SvgPicture.asset(
            'assets/svgs/logo.svg',
            width: 24.w,
            height: 24.h,
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          'General',
          style: Styles.textStyle12,
        )
      ],
    );
  }
}
