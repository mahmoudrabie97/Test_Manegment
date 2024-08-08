import 'package:flutter/material.dart';
import 'package:test_mangement/pages/summary/widgets/summary_custom_ietm_row.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/styles.dart';

class SummaryCustomSubContainer extends StatelessWidget {
  const SummaryCustomSubContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .95,
      height: MediaQuery.of(context).size.height * .36,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            AssetsData.trophy,
            alignment: Alignment.topCenter,
          ),
          CustomTextarabic(
            text: S.of(context).congratuditions,
            fontWeight: FontWeight.w700,
            fontSize: 24,
          ),
          CustomTextarabic(
            text: S.of(context).registerPoints,
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SummaryCustomIetmRow(
                image: AssetsData.person,
                textAbove: S.of(context).third,
                textDown: 'ايناس عمر',
              ),
              Container(
                width: 1,
                height: 60,
                color: AppColor.greyColor,
              ),
              SummaryCustomIetmRow( image: AssetsData.boy,
                textAbove: S.of(context).second,
                textDown: 'ايناس عمر',),
              Container(
                width: 1,
                height: 60,
                color: AppColor.greyColor,
              ),
              SummaryCustomIetmRow( image: AssetsData.person,
                textAbove: S.of(context).first,
                textDown: 'ايناس عمر',),
            ],
          ),

          //const CustomRowText(),
        ],
      ),
    );
  }
}
