import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class DoctorSpecilitySeeAll extends StatelessWidget {
  const DoctorSpecilitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Doctor Speciality',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: Styles.textStyle14.copyWith(
                color: ColorsManager.kPrimaryColor,
              ),
            ))
      ],
    );
  }
}
