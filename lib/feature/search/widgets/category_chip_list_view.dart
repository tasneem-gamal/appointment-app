import 'package:appointment_app/feature/search/widgets/chip_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CategoryChipListView extends StatelessWidget {
  const CategoryChipListView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41.h,
      child: ListView.builder(
        itemBuilder: (context, index) => const ChipItem(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}