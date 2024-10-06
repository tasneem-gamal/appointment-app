import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/theming/colors.dart';

class RecommendationDoctorSearchField extends StatelessWidget {
  const RecommendationDoctorSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 290.w,
          height: 42.h,
          child: TextFormField(
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
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: (){}, 
            icon: const Icon(
              Icons.filter_list,
              size: 30,
            )
          ),
        )
      ],
    );
  }
}

