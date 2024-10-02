import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart'; // Import your model

class DoctorSpecilityItem extends StatelessWidget {
  final SpecializationData specialization; 

  const DoctorSpecilityItem({
    super.key,
    required this.specialization, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: ColorsManager.kNotifiBackgroundGrey,
          child: specialization.doctorsList != null && specialization.doctorsList!.isNotEmpty
              ? SvgPicture.network(
                  specialization.doctorsList![0].photo ?? 'assets/svgs/logo.svg',
                  width: 24.w,
                  height: 24.h,
                )
              : SvgPicture.asset(
                  'assets/svgs/logo.svg',
                  width: 24.w,
                  height: 24.h,
                ),
        ),
        SizedBox(height: 12.h),
        Text(
          specialization.name ?? 'General', 
          style: Styles.textStyle12,
        ),
      ],
    );
  }
}
