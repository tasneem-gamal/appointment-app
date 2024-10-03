import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/home_cubit.dart';
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
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is SpecializationStateSuccess) {
            var specializationList =
                state.specializationsResponseModel.specializationDataList;
            return SizedBox(
              height: 86.h,
              child: DoctorSpecialityListView(
                specializationDataList: specializationList ?? [],
              ),
            );
          } else if (state is SpecializationStateFailure) {
            return Center(
              child: Text(state.errMessage),
            );
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}
