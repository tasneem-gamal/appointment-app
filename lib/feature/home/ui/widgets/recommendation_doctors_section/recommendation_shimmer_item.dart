import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class RecommendationShimmerItem extends StatelessWidget {
  const RecommendationShimmerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      child: Row(
        children: [
          Shimmer.fromColors(
              baseColor: ColorsManager.kLighterGrey,
              highlightColor: Colors.white,
              child: Container(
                width: 110.w,
                height: 120.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0),
                  color: ColorsManager.kLighterGrey,
                ),
              ),
            ),
            SizedBox(width: 16.h,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Shimmer.fromColors(
                    baseColor: ColorsManager.kLighterGrey,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 18.h,
                      width: 180.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.kLighterGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h,),
                  Shimmer.fromColors(
                    baseColor: ColorsManager.kLighterGrey,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 14.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.kLighterGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.h,),
                  Shimmer.fromColors(
                    baseColor: ColorsManager.kLighterGrey,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 14.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.kLighterGrey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              )
            )
        ],
      ),
    );
  }
}