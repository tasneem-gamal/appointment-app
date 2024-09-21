import 'package:appointment_app/core/helpers/extension.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: Styles.textStyle12.copyWith(
            color: ColorsManager.k12SizeColorGreyShade,
          ),
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.signUpView);
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(left: 5),
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            'Sign Up',
            style: TextStyle(
              color: ColorsManager.kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}