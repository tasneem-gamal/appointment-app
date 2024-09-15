import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/styles.dart';

class CustomOnboardingAppBar extends StatelessWidget {
  const CustomOnboardingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/logo.svg'),
        const SizedBox(width: 8,),
        const Text('Docdoc', style: Styles.textStyle32,)
      ],
    );
  }
}