import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({super.key, required this.hasMinLength});

  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return buildValidation(
      'At least 8 characters', 
      hasMinLength
    );
  }

  Widget buildValidation(String text, bool hasValidated){
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: Styles.textStyle12.copyWith(
          color: ColorsManager.k12SizeColorGreyShade,
          decorationColor: hasValidated ? ColorsManager.k12SizeColorGreyShade : Colors.red,
        ),
      ),
    );
  }
}