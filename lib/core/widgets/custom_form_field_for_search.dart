import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theming/colors.dart';

class CustomTextFormFieldForsearch extends StatelessWidget {
  const CustomTextFormFieldForsearch({
    super.key, this.onChanged, 
  });

  final Function(String)? onChanged;
  
  @override
  Widget build(BuildContext context) {
  final TextEditingController textEditingController = TextEditingController();

    return TextFormField(
      onChanged: onChanged,
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: const TextStyle(
          color: ColorsManager.kGreySecondaryTextColor,
        ),
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: ColorsManager.kGreySecondaryTextColor,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffEDEDED))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Color(0xffEDEDED))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
                color: ColorsManager.k12SizeColorGreyShade)),
      ),
    );
  }
}

