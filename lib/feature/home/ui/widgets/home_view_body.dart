import 'package:appointment_app/constants.dart';
import 'package:appointment_app/feature/home/ui/widgets/recommendation_doctors_section/recommendation_doctors_list_view.dart';
import 'package:appointment_app/feature/home/ui/widgets/speciality_section/doctor_speciality_list_view.dart';
import 'package:appointment_app/feature/home/ui/widgets/find_nearby_doc_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'recommendation_doctors_section/recommendation_see_all.dart';
import 'speciality_section/doctor_specility_see_all.dart';
import 'home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HomeViewAppBar(),
            SizedBox(height: 30.h),
            const FindNearbyDocContainer(),
            SizedBox(height: 24.h),
            const DoctorSpecilitySeeAll(),
            SizedBox(height: 16.h),
            const DoctorSpecialityListView(),
            SizedBox(height: 16.h,),
            const RecommendationSeeAll(),
            SizedBox(height: 12.h,),
            const RecommendationDoctorsListView()
          ],
        ),
      ),
    );
  }
}

