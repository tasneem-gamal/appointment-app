import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class FindNearbyDocContainer extends StatelessWidget {
  const FindNearbyDocContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 167.h,
          decoration: BoxDecoration(
            color: ColorsManager.kPrimaryColor,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18.h, right: 18.h, top: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 143,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book and schedule with nearest doctor',
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 14),
                        backgroundColor: Colors.white,
                      ),
                      child: Text(
                        'Find Nearby',
                        style: Styles.textStyle12.copyWith(
                          color: ColorsManager.kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 8.h,
          top: -35.h,
          child: Image.asset(
            'assets/images/home_image.png',
            height: 202.h,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

