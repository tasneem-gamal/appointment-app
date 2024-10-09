import 'package:flutter/material.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class TapBarAndView extends StatelessWidget {
  const TapBarAndView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: TabBar(
          labelStyle: Styles.textStyle14.copyWith(
              color: ColorsManager.kPrimaryColor, fontWeight: FontWeight.w700),
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
    );
  }
}
