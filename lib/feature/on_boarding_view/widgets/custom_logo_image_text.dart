import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLogoImageText extends StatelessWidget {
  const CustomLogoImageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/svgs/logo_opacity.svg',
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              stops: const [0.14, 0.8]
            )
          ),
          child: Image.asset(
            'assets/images/Image.png',
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: Styles.textStyle32.copyWith(
              color: ColorsManager.kPrimaryColor,
              height: 1.4
            ),
          )
        )
      ],
    );
  }
}
