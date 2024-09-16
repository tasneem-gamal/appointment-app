import 'package:flutter/material.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.btnText, this.onPressed,
  });
  final String btnText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorsManager.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              btnText,
              style:
                  Styles.textStyle16.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
            ),
          )),
    );
  }
}