import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';

class DoctorReviewTapItem extends StatelessWidget {
  const DoctorReviewTapItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      decoration: BoxDecoration(
          color: ColorsManager.kNotifiBackgroundGrey,
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.asset('assets/images/review_text.png'),
            ),
            SizedBox(
              width: 10.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jane Cooper',
                  style:
                      Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 8.h,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  width: 280,
                  child: Text(
                    'this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care',
                    style: Styles.textStyle14
                        .copyWith(color: ColorsManager.kGreytextColor),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
