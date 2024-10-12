import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class DoctorLocationTab extends StatelessWidget {
  const DoctorLocationTab({super.key, required this.doctorModel});
  final Doctor doctorModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Practice Place',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          doctorModel.practicePlace ?? 'Cairo, Egypt',
          style:
              Styles.textStyle14.copyWith(color: ColorsManager.kGreytextColor),
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          'Location Map',
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          width: 372.h,
          height: 200.h,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/Map.png'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(12)),
        )
      ],
    );
  }
}
