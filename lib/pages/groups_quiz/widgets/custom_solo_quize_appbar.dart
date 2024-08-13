import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomGroupQuizeAppBar extends StatelessWidget {
  const CustomGroupQuizeAppBar({super.key});

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(AssetsData.dollar),
                  Spacer(),
                  CustomTextarabic(
                    text: '1234',
                    color: AppColor.whiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
                color: AppColor.lightGreenColor,
                borderRadius: BorderRadius.circular(10)),
          ),
          Spacer(),
          CustomTextarabic(
            text: S.of(context).soloquize, //change
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: AppColor.whiteColor,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: AppColor.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
