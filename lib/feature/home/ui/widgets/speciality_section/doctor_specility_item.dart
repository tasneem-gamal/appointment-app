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
                    'assets/images/logo.png', // the api doesn't have this
                    width: 24.w,
                    height: 24.h,
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
    return Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: ColorsManager.kPrimaryColor,
            ),
            shape: BoxShape.circle),
        child: CircleAvatar(
            radius: 35,
            backgroundColor: ColorsManager.kNotifiBackgroundGrey,
            child: Image.asset(
              'assets/images/logo.png', // the api doesn't have this
              width: 28.w,
              height: 28.h,
            )),
      );
  }
}
