import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/ui/widgets/recommendation_doctors_section/recommendation_doctors_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorsListView extends StatelessWidget {
  const RecommendationDoctorsListView({super.key, this.doctorsList});
  
  final List<Doctor>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => RecommendationDoctorsItem(
        doctorsModel: doctorsList![index],
      ), 
      separatorBuilder: (context, index) => SizedBox(height: 16.h,), 
      itemCount: doctorsList!.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}