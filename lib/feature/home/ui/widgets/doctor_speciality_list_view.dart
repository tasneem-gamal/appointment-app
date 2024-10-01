import 'package:appointment_app/feature/home/ui/widgets/doctor_specility_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) => const DoctorSpecilityItem(),
        separatorBuilder: (context, index) => SizedBox(width: 18.w,),
      ),
    );
  }
}