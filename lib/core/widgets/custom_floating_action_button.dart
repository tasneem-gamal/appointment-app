import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloationgactionButton extends StatelessWidget {
  const CustomFloationgactionButton({super.key, this.onPressed});
  
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: SizedBox(
          width: 60.h,
          height: 60.h,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: ColorsManager.kPrimaryColor,
              onPressed: onPressed,
              child: const Icon(
                Icons.search,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ),
    );
  }
}