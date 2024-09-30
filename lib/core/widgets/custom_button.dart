import 'package:flutter/material.dart';

import '../theming/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
    this.onPressed,
    this.borderRadius,
    this.backgroundColor,
    this.txtColor,
    required this.textStyle,
    this.buttonWidth,
    this.buttonHeight,
  });
  final String btnText;
  final void Function()? onPressed;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? txtColor;
  final TextStyle textStyle;
  final double? buttonWidth;
  final double? buttonHeight;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth ?? double.infinity,
      height: buttonHeight,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorsManager.kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
          padding: const EdgeInsets.all(16),
        ),
        child: Text(
          btnText,
          style: textStyle
        ),
      ),
    );
  }
}
