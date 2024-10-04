import 'package:appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingAnimationCustom extends StatelessWidget {
  const LoadingAnimationCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: LoadingAnimationWidget.waveDots(
          color: ColorsManager.kPrimaryColor, 
          size: 40
        ),
      ),
    );
  }
}