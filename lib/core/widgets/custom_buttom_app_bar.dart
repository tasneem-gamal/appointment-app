import 'package:appointment_app/feature/home/ui/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomButtomAppBar extends StatefulWidget {
  const CustomButtomAppBar({super.key});

  @override
  State<CustomButtomAppBar> createState() => _CustomButtomAppBarState();
}

class _CustomButtomAppBarState extends State<CustomButtomAppBar> {

  int selectedIndex = 0;
  List<Widget> pages = [
    const HomeView(),
  ];
  
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        notchMargin: 10,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                onItemTapped(0);
              },
              icon: Icon(
                Icons.home_outlined,
                size: 32,
                color: selectedIndex == 0 ? ColorsManager.kPrimaryColor : ColorsManager.k12SizeColorGreyShade
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
                color:  ColorsManager.k12SizeColorGreyShade
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