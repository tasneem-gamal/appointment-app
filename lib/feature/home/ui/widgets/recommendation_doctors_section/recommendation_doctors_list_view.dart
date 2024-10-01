import 'package:appointment_app/feature/home/ui/widgets/recommendation_doctors_section/recommendation_doctors_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorsListView extends StatelessWidget {
  const RecommendationDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const RecommendationDoctorsItem(), 
      separatorBuilder: (context, index) => SizedBox(height: 16.h,), 
      itemCount: 9,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}