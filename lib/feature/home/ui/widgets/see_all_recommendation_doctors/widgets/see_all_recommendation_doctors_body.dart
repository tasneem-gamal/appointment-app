import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/feature/home/logic/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'recommendation_doctor_search_field.dart';
import 'recommendation_doctor_top_bar.dart';

class SeeAllRecommendationDoctorsBody extends StatelessWidget {
  const SeeAllRecommendationDoctorsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RecommendationDoctorTopBar(),
            SizedBox(height: 32.h,),
            RecommendationDoctorSearchField(
              onSearch: (query){
                context.read<SearchCubit>().searchForDoctors(query);
              },
            ),
            SizedBox(height: 24.h,),
          ],
        ),
      ),
    );
  }
}

