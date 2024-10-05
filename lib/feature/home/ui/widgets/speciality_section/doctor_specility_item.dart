import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class DoctorSpecilityItem extends StatelessWidget {
  const DoctorSpecilityItem({
    super.key,
    required this.specializationData,
    required this.selectedIndex,
    required this.itemIndex,
  });

  final SpecializationData specializationData;
  final int selectedIndex;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? const WhenSelectSpeciality()
              : CircleAvatar(
                  radius: 35,
                  backgroundColor: ColorsManager.kNotifiBackgroundGrey,
                  child: Image.asset(
                    'assets/images/doctor.png', // the api doesn't have this
                    width: 30.w,
                    height: 30.h,
                  )),
          SizedBox(height: 12.h),
          Text(
            specializationData.name ?? 'Dermatology',
            style: itemIndex == selectedIndex
                ? Styles.textStyle12.copyWith(
                    color: ColorsManager.kPrimaryColor,
                    fontWeight: FontWeight.bold)
                : Styles.textStyle12,
          ),
        ],
      ),
    );
  }
}

class WhenSelectSpeciality extends StatelessWidget {
  const WhenSelectSpeciality({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 35,
        backgroundColor: ColorsManager.kPrimaryColor,
        child: Image.asset(
          'assets/images/doctor.png', // the api doesn't have this
          width: 32.w,
          height: 32.h,
        ));
  }
}
