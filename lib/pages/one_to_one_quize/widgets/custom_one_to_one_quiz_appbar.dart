import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomOneToOneQuizeAppBar extends StatelessWidget {
  const CustomOneToOneQuizeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 80,
            height: 30,
            decoration: BoxDecoration(
                color: AppColor.lightGreenColor,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(AssetsData.dollar),
                  const Spacer(),
                  const CustomTextarabic(
                    text: '1234',
                    color: AppColor.whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          const CustomTextarabic(
            text: "اختبار  1 ضد 1", //change
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: AppColor.whiteColor,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: AppColor.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
