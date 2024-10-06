import 'package:appointment_app/core/helpers/extension.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class RecommendationSeeAll extends StatelessWidget {
  const RecommendationSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recommendation Doctor',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
        ),
        TextButton(
            onPressed: () {
              context.pushNamed(Routes.seeAllRecommendationDoctorsBody);
            },
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
