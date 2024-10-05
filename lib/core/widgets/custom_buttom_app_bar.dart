import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomButtomAppBar extends StatelessWidget {
  const CustomButtomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        notchMargin: 10,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                size: 32,
                color: ColorsManager.k12SizeColorGreyShade,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.messenger_outline,
                color: ColorsManager.k12SizeColorGreyShade,
              ),
            ),
            SizedBox(width: 24.h,),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.calendar_month_outlined,
                color: ColorsManager.k12SizeColorGreyShade,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: ColorsManager.k12SizeColorGreyShade,
              ),
            ),
          ],
        ),
      );
  }
}