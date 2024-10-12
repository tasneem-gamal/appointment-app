import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({super.key, required this.doctorModel});

  final Doctor doctorModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          'I"m ${doctorModel.name} my degree is ${doctorModel.degree}',
          style:
              Styles.textStyle14.copyWith(color: ColorsManager.kGreytextColor),
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          'Working Time',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          'Monday - Friday, ${doctorModel.startTime} - ${doctorModel.endTime}',
          style:
              Styles.textStyle14.copyWith(color: ColorsManager.kGreytextColor),
        ),
        SizedBox(
          height: 24.h,
        ),
        Text(
          'STR',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          '${doctorModel.price}',
          style:
              Styles.textStyle14.copyWith(color: ColorsManager.kGreytextColor),
        ),
      ],
    );
  }
}