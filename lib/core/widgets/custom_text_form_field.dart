import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.labelText, this.suffixIcon, this.isObsecureText
  });
  final String labelText;
  final Widget? suffixIcon;
  final bool? isObsecureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsecureText ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xffEDEDED)
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Color(0xffEDEDED)
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.black
          )
        ),
        fillColor: ColorsManager.kLighterGrey,
        filled: true,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.kGreySecondaryTextColor,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: ColorsManager.kGreySecondaryTextColor
        )
      ),
    );
  }
}