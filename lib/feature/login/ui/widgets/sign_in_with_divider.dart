import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SignInWithDivider extends StatelessWidget {
  const SignInWithDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: ColorsManager.kGreySecondaryTextColor,
            thickness: 1,
            endIndent: 8,
          ),
        ),
        Text(
          'Or sign in with',
          style: Styles.textStyle12.copyWith(
            color: ColorsManager.k12SizeColorGreyShade
          ),
        ),
        const Expanded(
          child: Divider(
            color: ColorsManager.kGreySecondaryTextColor,
            thickness: 1,
            indent: 8,
          ),
        ),
      ],
    );
  }
}