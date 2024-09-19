import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class TermsConditionSection extends StatelessWidget {
  const TermsConditionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      children: [
        Text(
          'By logging, you agree to our.',
          style: Styles.textStyle12.copyWith(
            color: ColorsManager.k12SizeColorGreyShade,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets
                .zero, 
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize
                .shrinkWrap, 
          ),
          child: const Text(
            'Terms & Conditions',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          'and',
          style: Styles.textStyle12.copyWith(
            color: ColorsManager.k12SizeColorGreyShade,
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            'Privacy Policy',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

