import 'package:appointment_app/constants.dart';
import 'package:appointment_app/feature/home/ui/widgets/find_nearby_doc_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.homepadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HomeViewAppBar(),
            SizedBox(height: 30.h),
            const FindNearbyDocContainer()
          ],
        ),
      ),
    );
  }
}

