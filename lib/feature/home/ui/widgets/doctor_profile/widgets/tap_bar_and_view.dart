import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class TapBarAndView extends StatelessWidget {
  const TapBarAndView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          TabBar(
              labelStyle: Styles.textStyle14.copyWith(
                  color: ColorsManager.kPrimaryColor,
                  fontWeight: FontWeight.w700),
              labelColor: ColorsManager.kPrimaryColor,
              indicatorColor: ColorsManager.kPrimaryColor,
              tabs: const [
                Tab(
                  text: 'About',
                ),
                Tab(
                  text: 'Location',
                ),
                Tab(
                  text: 'Reviews',
                ),
              ]),
          SizedBox(height: 32.h,),
          Expanded(
            child: TabBarView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About me',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Text(
                    'Dr. Jenny Watson is the top most Immunologists specialist in Christ Hospital at London. She achived several awards for her wonderful contribution in medical field. She is available for private consultation.',
                    style: Styles.textStyle14.copyWith(
                      color: ColorsManager.kGreytextColor
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  Text(
                    'Working Time',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Text(
                    'Monday - Friday, 08.00 AM - 20.00 PM',
                    style: Styles.textStyle14.copyWith(
                      color: ColorsManager.kGreytextColor
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  Text(
                    'STR',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 12.h,),
                  Text(
                    '4726482464',
                    style: Styles.textStyle14.copyWith(
                      color: ColorsManager.kGreytextColor
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'About me',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    'About me',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600
                    ),
                  )
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
