import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'recommendation_shimmer_item.dart';

class RecommendationDoctorsShimmerListView extends StatelessWidget {
  const RecommendationDoctorsShimmerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const RecommendationShimmerItem() ,
      separatorBuilder: (context, index) => SizedBox(height: 16.h,), 
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}

