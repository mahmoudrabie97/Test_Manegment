



import 'package:flutter/material.dart';

import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtext.dart';

class CustomColumnText extends StatelessWidget {
  const CustomColumnText(
      {super.key, required this.textOne, required this.textTwo});

  final String textOne;
  final String textTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextarabic(
          text: textOne,
          fontWeight: FontWeight.w700,
          color: AppColor.whiteColor,
          fontSize: 12,
        ),
        const SizedBox(height: 5,),
        CustomTextarabic(
          text: textTwo,
          fontWeight: FontWeight.w700,
          color: AppColor.whiteColor,
          fontSize: 12,
        ),
      ],
    );
  }
}