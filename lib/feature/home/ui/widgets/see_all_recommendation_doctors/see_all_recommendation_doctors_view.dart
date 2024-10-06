import 'package:appointment_app/feature/home/ui/widgets/see_all_recommendation_doctors/widgets/see_all_recommendation_doctors_body.dart';
import 'package:flutter/material.dart';

class SeeAllRecommendationDoctorsView extends StatelessWidget {
  const SeeAllRecommendationDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SeeAllRecommendationDoctorsBody()
      ),
    );
  }
}