import 'package:appointment_app/feature/home/ui/widgets/doctor_profile/widgets/doctor_profile_body.dart';
import 'package:flutter/material.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: DoctorProfileBody()),
    );
  }
}