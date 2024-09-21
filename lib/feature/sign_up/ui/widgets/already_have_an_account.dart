import 'package:appointment_app/core/helpers/extension.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: Styles.textStyle12.copyWith(
            color: ColorsManager.k12SizeColorGreyShade,
          ),
        ),
        TextButton(
          onPressed: () {
            context.pushNamed(Routes.loginView);
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(left: 5),
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            'Log in',
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