import 'package:flutter/material.dart';

import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class SoloQuizeSubContainer extends StatelessWidget {
  const SoloQuizeSubContainer({
    super.key,
    required this.levelText,
    required this.testText,
    required this.subColor,
    required this.mainTest,
    required this.mainColor,
  });

  final String levelText;
  final String testText;
  final Color subColor;
  final Color mainColor;
  final String mainTest;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .93,
      height: MediaQuery.of(context).size.height * .2,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 7,),
          CustomTextarabic(
            text: mainTest,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColor.whiteColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
            child: Row(
              children: [
                Image.asset(AssetsData.alarm),
                const SizedBox(
                  width: 4,
                ),
                const CustomTextarabic(
                  text: '20',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColor.whiteColor,
                ),
                CustomTextarabic(
                  text: S.of(context).minute,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColor.whiteColor,
                ),
                Spacer(),
                Image.asset(AssetsData.question),
                const SizedBox(
                  width: 4,
                ),
                const CustomTextarabic(
                  text: '20',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColor.whiteColor,
                ),
                CustomTextarabic(
                  text: S.of(context).question,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColor.whiteColor,
                ),
                Spacer(),
                Image.asset(AssetsData.dollar),
                const SizedBox(
                  width: 4,
                ),
                const CustomTextarabic(
                  text: '20',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColor.whiteColor,
                ),
                CustomTextarabic(
                  text: S.of(context).coin,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColor.whiteColor,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 20.0),
            child: Row(
              children: [
                Image.asset(AssetsData.level),
                const SizedBox(
                  width: 5,
                ),
                CustomTextarabic(
                  text: levelText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.whiteColor,
                ),
                Spacer(),
                Image.asset(AssetsData.test),
                const SizedBox(
                  width: 5,
                ),
                CustomTextarabic(
                  text: testText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.whiteColor,
                ),
                Spacer(),
                Container(
                  width: 30,
                  height: 25,
                  decoration: BoxDecoration(
                    color: subColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        size: 15,
                        Icons.arrow_forward_ios,
                        color: AppColor.whiteColor,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
