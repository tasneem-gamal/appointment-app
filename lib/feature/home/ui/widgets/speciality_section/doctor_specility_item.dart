import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class DoctorSpecilityItem extends StatelessWidget {
  const DoctorSpecilityItem({
    super.key, required this.specializationData,
  });
  
  final SpecializationData specializationData;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            radius: 35,
            backgroundColor: ColorsManager.kNotifiBackgroundGrey,
            child: Image.asset(
              'assets/images/logo.png', // the api doesn't have this
              width: 24.w,
              height: 24.h,
            )
            ),
        SizedBox(height: 12.h),
        Text(
          specializationData.name ?? 'Dermatology',
          style: Styles.textStyle12,
        ),
      ],
    );
  }
}
