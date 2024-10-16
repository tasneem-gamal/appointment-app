import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ChipItem extends StatefulWidget {
  const ChipItem({
    super.key
  });


  @override
  State<ChipItem> createState() => _ChipItemState();
}

class _ChipItemState extends State<ChipItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Chip(
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            'General',
            style: Styles.textStyle14,
          ),
        ),
        shape: StadiumBorder(),
      ),
    );
  }
}