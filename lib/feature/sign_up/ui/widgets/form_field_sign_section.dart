import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class FormFieldSignSection extends StatefulWidget {
  const FormFieldSignSection({super.key});

  @override
  State<FormFieldSignSection> createState() => _FormFieldSignSectionState();
}

class _FormFieldSignSectionState extends State<FormFieldSignSection> {
  bool isObsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Email', 
            validator: (value) {}
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextFormField(
            hintText: 'Password',
            validator: (value) {},
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(
                isObsecureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isObsecureText: isObsecureText,
          ),
          SizedBox(height: 16.h,),
        ],
      ),
    );
  }
}
