import 'package:appointment_app/core/helpers/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class RecommendationDoctorTopBar extends StatelessWidget {
  const RecommendationDoctorTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorsManager.kLighterGrey, width: 2)),
          child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        Text(
          'Recommendation Doctor',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
        ),
        Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorsManager.kLighterGrey, width: 2)),
          child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.more_horiz)),
        ),
      ],
    );
  }
}
