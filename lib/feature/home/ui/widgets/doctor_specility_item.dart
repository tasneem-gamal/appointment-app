import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DoctorSpecilityItem extends StatelessWidget {
  const DoctorSpecilityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 56.h,
          height: 56.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: ColorsManager.kNotifiBackgroundGrey,
          ),
          child: const Icon(FontAwesomeIcons.stethoscope),
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
