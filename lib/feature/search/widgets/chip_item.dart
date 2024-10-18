import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ChipItem extends StatefulWidget {
  const ChipItem({
    super.key, required this.label, required this.isSelected, required this.onSelected
  });
  final String label;
  final bool isSelected;
  final VoidCallback onSelected;
  @override
  State<ChipItem> createState() => _ChipItemState();
}

class _ChipItemState extends State<ChipItem> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: GestureDetector(
        onTap: widget.onSelected,
        child: Chip(
          backgroundColor: widget.isSelected ? ColorsManager.kPrimaryColor : ColorsManager.kLighterGrey,
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              widget.label,
              style: Styles.textStyle14.copyWith(
                color: widget.isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
          shape: StadiumBorder(
            side: BorderSide(
              color: widget.isSelected ? ColorsManager.kPrimaryColor : ColorsManager.kGreySecondaryTextColor,
            )
          ),
        ),
      ),
    );
  }
}