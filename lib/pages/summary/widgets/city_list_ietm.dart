

import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CityListIetm extends StatelessWidget {
  const CityListIetm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextarabic(
                text: S.of(context).rank,
                color: AppColor.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              CustomTextarabic(
                text: S.of(context).tenPlayers,
                color: AppColor.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              CustomTextarabic(
                text: S.of(context).correct,
                color: AppColor.darkGrey,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CityIetmListViewRank();
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

class CityIetmListViewRank extends StatelessWidget {
  const CityIetmListViewRank({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        CustomTextarabic(
          text: S.of(context).first,
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(width: 20,),
        Image.asset(AssetsData.person,width: 55,height: 55,),
        SizedBox(width: 30,),
        Column(
          children: [
            CustomTextarabic(
              text:'ايناس عمر ',
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            Row(

              children: [
                CustomTextarabic(
                  text: S.of(context).hadWon,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppColor.greenColor,
                ),
                SizedBox(width: 4,),
                Image.asset(AssetsData.dollar,width: 13,height: 13,),
                SizedBox(width: 4,),
                CustomTextarabic(
                  text: '50',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: AppColor.greenColor,
                ),

              ],
            ),

          ],
        ),
        Spacer(),
        CustomTextarabic(
          text: '80%',
          fontSize: 16,
          fontWeight: FontWeight.w700,

        )
      ],
    );
  }
}
