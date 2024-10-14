import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/core/widgets/custom_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: Column(
        children: [
          const CustomTopBar(topBarText: 'Search'),
          SizedBox(height: 32.h,)
        ],
      ),
    );
  }
}