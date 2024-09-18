import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class FormFieldSection extends StatefulWidget {
  const FormFieldSection({super.key});

  @override
  State<FormFieldSection> createState() => _FormFieldSectionState();
}

class _FormFieldSectionState extends State<FormFieldSection> {

  final formKey = GlobalKey<FormState>();
  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const CustomTextFormField(
            labelText: 'Email',
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextFormField(
            labelText: 'Password',
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(
                isObsecureText ? 
                Icons.visibility_off 
                : Icons.visibility
              ),
            ),
            isObsecureText: isObsecureText,
          ),
          SizedBox(
            height: 14.h,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forget Password?',
                  style: Styles.textStyle12
                      .copyWith(color: ColorsManager.kPrimaryColor),
                )),
          )
        ],
      ),
    );
  }
}
