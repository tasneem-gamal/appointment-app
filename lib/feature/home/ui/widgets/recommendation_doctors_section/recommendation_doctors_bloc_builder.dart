import 'package:appointment_app/feature/home/ui/widgets/recommendation_doctors_section/recommendation_doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_cubit.dart';

class RecommendationDoctorsBlocBuilder extends StatelessWidget {
  const RecommendationDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is DoctorsSuccess ||
            current is DoctorsFailure,
        builder: (context, state) {
          if (state is DoctorsSuccess) {
            return RecommendationDoctorsListView(
              doctorsList: state.doctorsList,
            );
          } else if (state is DoctorsFailure) {
            return SizedBox(
              child: Text(state.errMessage),
            );
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}
