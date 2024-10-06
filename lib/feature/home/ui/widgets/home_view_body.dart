import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/feature/home/ui/widgets/find_nearby_doc_container.dart';
import 'package:appointment_app/feature/home/ui/widgets/speciality_section/doctor_specility_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/styles.dart';
import 'recommendation_doctors_section/recommendation_doctors_bloc_builder.dart';
import 'recommendation_doctors_section/recommendation_see_all.dart';
import 'home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeViewAppBar(),
            SizedBox(height: 30.h),
            const FindNearbyDocContainer(),
            SizedBox(height: 24.h),
            Text(
              'Doctor Speciality',
              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16.h),
            const DoctorSpecilityBlocBuilder(),
            SizedBox(
              height: 16.h,
            ),
            const RecommendationSeeAll(),
            SizedBox(
              height: 12.h,
            ),
            const RecommendationDoctorsBlocBuilder()
          ],
        ),
      ),
    );
  }
}

