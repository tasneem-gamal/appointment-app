import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/feature/home/ui/widgets/doctor_profile/widgets/doctor_container_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../see_all_recommendation_doctors/widgets/recommendation_doctor_and_profile_top_bar.dart';

class DoctorProfileBody extends StatelessWidget {
  const DoctorProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: Column(
        children: [
          const RecommendationDoctorAndProfileTopBar(topBarText: 'Dr Randy Wigham'),
          SizedBox(height: 32.h,),
          const DoctorContainerItem()
        ],
      ),
    );
  }
}