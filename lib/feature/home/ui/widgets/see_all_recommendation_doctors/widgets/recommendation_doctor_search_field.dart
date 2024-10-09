import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../logic/cubit/search_cubit.dart';

class RecommendationDoctorSearchField extends StatelessWidget {
  const RecommendationDoctorSearchField({
    super.key, 
  });


  
  @override
  Widget build(BuildContext context) {
  final TextEditingController textEditingController = TextEditingController();

    return TextFormField(
      onChanged: (value){
        BlocProvider.of<SearchCubit>(context).searchForDoctors(value);
      },
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(
          color: ColorsManager.kGreySecondaryTextColor,
        ),
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: ColorsManager.kGreySecondaryTextColor,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffEDEDED))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffEDEDED))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
                color: ColorsManager.k12SizeColorGreyShade)),
      ),
    );
  }
}

