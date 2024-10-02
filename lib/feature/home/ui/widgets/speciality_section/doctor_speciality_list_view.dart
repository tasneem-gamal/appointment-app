import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:appointment_app/feature/home/ui/widgets/speciality_section/doctor_specility_item.dart';

class DoctorSpecialityListView extends StatelessWidget {

  const DoctorSpecialityListView({super.key, required this.specializationDataList});
  final List<SpecializationData> specializationDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) => DoctorSpecilityItem(
          specializationData: specializationDataList[index],
        ),
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
      ),
    );
  }
}
