import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/home_cubit.dart';
import '../recommendation_doctors_section/recommendation_doctors_list_view.dart';
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
            return const SizedBox(
              height: 100,
              child: Center(
                // child: CircularProgressIndicator(),
              ),
            );
          } else if (state is SpecializationStateSuccess) {
            var specializationList =
                state.specializationsResponseModel.specializationDataList;
            var doctorsList = specializationList
                ?.expand((spec) => spec.doctorsList ?? [])
                .cast<Doctor>()
                .toList();
            return Column(
              children: [
                SizedBox(
                  height: 86.h,
                  child: DoctorSpecialityListView(
                    specializationDataList: specializationList ?? [],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                const RecommendationSeeAll(),
                SizedBox(
                  height: 12.h,
                ),
                RecommendationDoctorsListView(
                  doctorsList: doctorsList,
                )
              ],
            );
          } else if(state is SpecializationStateFailure){
            return Center(
              child:  Text(state.errMessage),
            );
          }
          else {
            return const SizedBox.shrink();
          }
        });
  }
}
