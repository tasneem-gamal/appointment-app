import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class RecommendationDoctorsItem extends StatelessWidget {
  const RecommendationDoctorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126.h,
      decoration: BoxDecoration(
          color: ColorsManager.kNotifiBackgroundGrey,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/recom_doc.png',
              width: 110.w,
              height: 110.h,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 16.h,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Randy Wigham',
                  style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text('General | RSUD Gatot Subroto',
                    style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorsManager.kGreytextColor)),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      '4.8',
                      style: Styles.textStyle12.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorsManager.kGreytextColor),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      '(4,279 reviews)',
                      style: Styles.textStyle12.copyWith(
                          fontWeight: FontWeight.w500,
                          color: ColorsManager.kGreytextColor),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
