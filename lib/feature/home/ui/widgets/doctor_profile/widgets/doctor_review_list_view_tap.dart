
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doctor_review_tap_item.dart';

class DoctorReviewListViewTap extends StatelessWidget {
  const DoctorReviewListViewTap({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const DoctorReviewTapItem(), 
      separatorBuilder: (context, index) => SizedBox(height: 8.h,), 
      itemCount: 5
    );
  }
}