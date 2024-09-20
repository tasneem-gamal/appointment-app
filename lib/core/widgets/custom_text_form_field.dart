import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, 
    required this.hintText, 
    this.suffixIcon, 
    this.isObsecureText,
    this.controller,
    required this.validator,
    this.onChanged
  }); 
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObsecureText;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      onChanged: onChanged,
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
            color: ColorsManager.k12SizeColorGreyShade
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red
          )
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red
          )
        ),
        fillColor: ColorsManager.kLighterGrey,
        filled: true,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.kGreySecondaryTextColor,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: ColorsManager.kGreySecondaryTextColor
        ),
      ),
    );
  }
}