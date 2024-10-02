import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/ui/widgets/speciality_section/doctor_specility_item.dart';

class DoctorSpecialityListView extends StatelessWidget {
  final List<SpecializationData>? specializationList;

  const DoctorSpecialityListView({super.key, required this.specializationList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: specializationList?.length ?? 0,
        itemBuilder: (context, index) {
          final specialization = specializationList![index];
          return DoctorSpecilityItem(specialization: specialization);
        },
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
      ),
    );
  }
}
