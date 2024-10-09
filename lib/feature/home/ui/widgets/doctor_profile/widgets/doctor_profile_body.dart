import 'package:appointment_app/core/helpers/constants.dart';
import 'package:flutter/material.dart';

import '../../see_all_recommendation_doctors/widgets/recommendation_doctor_and_profile_top_bar.dart';

class DoctorProfileBody extends StatelessWidget {
  const DoctorProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: const Column(
        children: [
          RecommendationDoctorAndProfileTopBar(topBarText: 'Dr Randy Wigham')
        ],
      ),
    );
  }
}