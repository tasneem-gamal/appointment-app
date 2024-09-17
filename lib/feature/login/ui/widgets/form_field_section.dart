import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import 'custom_check_box_with_text.dart';

class FormFieldSection extends StatelessWidget {
  const FormFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextFormField(
          labelText: 'Email',
        ),
        SizedBox(
          height: 16.h,
        ),
        const CustomTextFormField(
          labelText: 'Password',
        ),
        SizedBox(
          height: 14.h,
        ),
        Row(
          children: [
            const CheckBoxWithText(),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: Styles.textStyle12
                      .copyWith(color: ColorsManager.kPrimaryColor),
                ))
          ],
        )
      ],
    );
  }
}
