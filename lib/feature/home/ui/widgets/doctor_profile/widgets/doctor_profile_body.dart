import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:appointment_app/feature/home/ui/widgets/doctor_profile/widgets/doctor_container_item.dart';
import 'package:appointment_app/feature/home/ui/widgets/doctor_profile/widgets/tap_bar_and_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/custom_top_bar.dart';


class DoctorProfileBody extends StatelessWidget {
  const DoctorProfileBody({super.key, required this.doctorModel});
  final Doctor doctorModel;
  
  @override
  Widget build(BuildContext context) {
    

    return DefaultTabController(
      length: 3,
      child: Padding(
        padding: Constants.homepadding,
        child: Column(
          children: [
            CustomTopBar(topBarText: doctorModel.name ?? 'Dr Randy Wigham'),
            SizedBox(height: 32.h,),
            DoctorContainerItem(doctorModel: doctorModel,),
            SizedBox(height: 24.h,),
            TapBarAndView(doctorModel: doctorModel,),
          ],
        ),
      ),
    );
  }
}