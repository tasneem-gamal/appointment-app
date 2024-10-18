import 'package:appointment_app/feature/search/widgets/chip_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryChipListView extends StatefulWidget {
  const CategoryChipListView({super.key});

  @override
  State<CategoryChipListView> createState() => _CategoryChipListViewState();
}

class _CategoryChipListViewState extends State<CategoryChipListView> {
  int selectedIndex = 0;

  final List<String> chipLabels = [
    'All',
    'General',
    'Cardiology',
    'Neurology',
    'Orthopedics',
    'Pediatrics',
    'Gynecology',
    'Ophthalmology',
    'Urology',
    'Gastroenterology',
    'Psychiatry'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41.h,
      child: ListView.builder(
        itemBuilder: (context, index) => ChipItem(
          label: chipLabels[index],
          isSelected: selectedIndex == index,
          onSelected: (){
            setState(() {
              selectedIndex = index;
            });
          },
        ),
        itemCount: chipLabels.length, 
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
