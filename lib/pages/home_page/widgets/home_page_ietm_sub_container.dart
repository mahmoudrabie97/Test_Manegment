

import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/customtext.dart';

class HomePageIetmSubContainer extends StatelessWidget {
  const HomePageIetmSubContainer({
    super.key,
    required this.image,

    required this.text,
  });

  final String image;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, top: 12),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextarabic(
                text: S.of(context).start,
                fontWeight: FontWeight.w700,
                fontSize: 12,
                color: AppColor.whiteColor,
              ),
              CustomTextarabic(
                text: text,
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: AppColor.whiteColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}