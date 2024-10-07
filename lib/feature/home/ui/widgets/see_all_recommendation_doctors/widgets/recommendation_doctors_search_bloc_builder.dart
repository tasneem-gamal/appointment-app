import 'package:appointment_app/feature/home/logic/cubit/search_cubit.dart';
import 'package:appointment_app/feature/home/ui/widgets/recommendation_doctors_section/recommendation_doctors_list_view.dart';
import 'package:appointment_app/feature/home/ui/widgets/recommendation_doctors_section/recommendation_doctors_shimmer_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendationDoctorsSearchBlocBuilder extends StatelessWidget {
  const RecommendationDoctorsSearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
  buildWhen: (previous, current) => 
    current is SearchStateLoading ||
    current is SearchStateSucess ||
    current is SearchStateFailure,
  builder: (context, state) {
    if (state is SearchStateLoading) {
      return const RecommendationDoctorsShimmerListView();
    } else if (state is SearchStateSucess) {
      return RecommendationDoctorsListView(doctorsList: state.doctorsList);
    } else if (state is SearchStateFailure) {
      return Text(state.errMessage);
    } else {
      return const SizedBox.shrink();
    }
  }
);
  }
}