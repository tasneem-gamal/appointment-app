import 'package:appointment_app/core/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'recommendation_doctor_top_bar.dart';

class SeeAllRecommendationDoctorsBody extends StatelessWidget {
  const SeeAllRecommendationDoctorsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: const SingleChildScrollView(
        child: Column(
          children: [
            RecommendationDoctorTopBar()
          ],
        ),
      ),
    );
  }
}

