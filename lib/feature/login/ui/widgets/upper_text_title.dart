import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class UpperTextTitle extends StatelessWidget {
  const UpperTextTitle({super.key, required this.mainTitle, required this.subTitle});
  final String mainTitle;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainTitle,
          style:
              Styles.textStyle24.copyWith(color: ColorsManager.kPrimaryColor),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          subTitle,
          style:
              Styles.textStyle14.copyWith(color: ColorsManager.kGreytextColor),
        ),
      ],
    );
  }
}
