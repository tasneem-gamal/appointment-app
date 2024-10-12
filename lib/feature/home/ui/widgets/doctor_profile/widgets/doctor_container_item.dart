import 'package:appointment_app/core/theming/colors.dart';
import 'package:appointment_app/feature/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/theming/styles.dart';

class DoctorContainerItem extends StatelessWidget {
  const DoctorContainerItem({super.key, required this.doctorModel});

  final Doctor doctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/recom_doc.png', // there is no image for doc
              width: 74.w,
              height: 74.h,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 16.h,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Randy Wigham',
                  style:
                      Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text('General | RSUD Gatot Subroto',
                    style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorsManager.kGreytextColor)),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "hello@gmail.com",
                  style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.w500,
                      color: ColorsManager.kGreytextColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.message,
                  color: ColorsManager.kPrimaryColor,
                )),
          )
        ],
      ),
    );
  }
}
