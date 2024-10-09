import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/feature/home/ui/widgets/doctor_profile/widgets/doctor_profile_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: DoctorProfileBody()),
      bottomNavigationBar: Padding(
        padding: Constants.homepadding.copyWith(
          bottom: 20.h
        ),
        child: CustomButton(
          btnText: 'Make An Appointment', 
          textStyle: Styles.textStyle16.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600
          )
        ),
      ),
    );
  }
}