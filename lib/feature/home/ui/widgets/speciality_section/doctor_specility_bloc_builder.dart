import 'package:appointment_app/feature/home/ui/widgets/recommendation_doctors_section/recommendation_doctors_shimmer_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/loading_animation.dart';
import '../../../logic/home_cubit/home_cubit.dart';
import '../recommendation_doctors_section/recommendation_see_all.dart';
import 'doctor_speciality_list_view.dart'; 

class DoctorSpecilityBlocBuilder extends StatelessWidget {
  const DoctorSpecilityBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is SpecializationStateLoading ||
            current is SpecializationStateSuccess ||
            current is SpecializationStateFailure,
        builder: (context, state) {
          if (state is SpecializationStateLoading) {
            return const SpecialityAndRecommendationLoading();
          } else if (state is SpecializationStateSuccess) {
            return getSpecilitySection(state);
          } else if (state is SpecializationStateFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else {
            return const SizedBox.shrink();
          }
        });
  }

  SizedBox getSpecilitySection(SpecializationStateSuccess state) {
    var specializationList =
        state.specializationData;
    return SizedBox(
      height: 86.h,
      child: DoctorSpecialityListView(
        specializationDataList: specializationList
      ),
    );
  }
}

class SpecialityAndRecommendationLoading extends StatelessWidget {
  const SpecialityAndRecommendationLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoadingAnimationCustom(),
        SizedBox(
          height: 16.h,
        ),
        const RecommendationSeeAll(),
        SizedBox(
          height: 12.h,
        ),
        const RecommendationDoctorsShimmerListView()
      ],
    );
  }
}


