import 'package:flutter/material.dart';
import 'package:khamkham/utils/colors.dart';
import 'package:khamkham/utils/dimensions.dart';
import 'package:khamkham/widgets/big_text.dart';
import 'package:khamkham/widgets/icon_and_text.dart';
import 'package:khamkham/widgets/small_text.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, color: Colors.black),
        SizedBox(height: Dimensions.height5),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(Icons.star, color: AppColors.mainColor, size: 17);
              }),
            ),
            SizedBox(width: 5),
            SmallText(text: "4.5"),
            SizedBox(width: 10),
            SmallText(text: "1287"),
            SizedBox(width: 5),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
              text: 'Normal',
            ),
            SizedBox(width: 10),
            IconAndText(
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
              text: '1.7km',
            ),
            SizedBox(width: 10),
            IconAndText(
              icon: Icons.access_time_rounded,
              iconColor: AppColors.iconColor2,
              text: '20min',
            ),
          ],
        ),
      ],
    );
  }
}
