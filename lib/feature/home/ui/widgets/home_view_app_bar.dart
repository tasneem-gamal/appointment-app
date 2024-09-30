import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Hi, Omar!',
        style: Styles.textStyle18.copyWith(
          fontWeight: FontWeight.w700
        ),
      ),
      subtitle: Text(
        'How are you today?',
        style: Styles.textStyle12,
      ),
      trailing: GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: ColorsManager.kNotifiBackgroundGrey,
            borderRadius: BorderRadius.circular(48),
          ),
          child: const Icon(
              FontAwesomeIcons.bell,
              size: 24,
            ),
        ),
      )
    );
  }
}