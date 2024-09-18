import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class CheckBoxWithText extends StatefulWidget {
  const CheckBoxWithText({
    super.key,
  });

  @override
  State<CheckBoxWithText> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWithText> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked, 
          onChanged: (value){
            setState(() {
              isChecked = value ?? false;
            });
          }
        ),
        Text(
          'Remeber me',
          style: Styles.textStyle12.copyWith(
            color: const Color(0xff9E9E9E)
          ),
        )
      ],
    );
  }
}