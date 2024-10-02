import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appointment_app/feature/home/ui/widgets/speciality_section/doctor_speciality_list_view.dart';

import '../../../logic/home_cubit.dart'; 

class DoctorSpecilityBlocBuilder extends StatelessWidget {
  const DoctorSpecilityBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is SpecializationStateLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SpecializationStateFailure) {
          return Center(
            child: Text(
              state.errMessage,
              style: const TextStyle(color: Colors.red),
            ),
          );
        } else if (state is SpecializationStateSuccess) {
          final specializationList = state.specializationList; 
          return DoctorSpecialityListView(specializationList: specializationList);
        }
        return const Center(child: Text('No specializations available.'));
      },
    );
  }
}

