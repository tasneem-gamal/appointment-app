import 'package:appointment_app/feature/home/ui/widgets/doctor_profile/widgets/doctor_location_tab.dart';
import 'package:appointment_app/feature/home/ui/widgets/doctor_profile/widgets/doctor_review_list_view_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';
import 'about_doctor_tap.dart';

class TapBarAndView extends StatelessWidget {
  const TapBarAndView({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
              labelStyle: Styles.textStyle14.copyWith(
                  color: ColorsManager.kPrimaryColor,
                  fontWeight: FontWeight.w700),
              labelColor: ColorsManager.kPrimaryColor,
              indicatorColor: ColorsManager.kPrimaryColor,
              tabs: const [
                Tab(
                  text: 'About',
                ),
                Tab(
                  text: 'Location',
                ),
                Tab(
                  text: 'Reviews',
                ),
              ]),
          SizedBox(height: 32.h,),
          const Expanded(
            child: TabBarView(children: [
              AboutDoctor(),
              DoctorLocationTab(),
              DoctorReviewListViewTap()
            ]),
          )
        ],
      ),
    );
  }
}


