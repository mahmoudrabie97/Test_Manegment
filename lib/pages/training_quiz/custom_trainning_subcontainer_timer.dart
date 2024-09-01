import 'package:flutter/material.dart';
import 'package:test_mangement/models/exam_solo_model.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class TrainningQuizeSubContainerTime extends StatelessWidget {
  const TrainningQuizeSubContainerTime({
    super.key,
    required this.examSoloModel,
    required this.index,
  });
  final ExamSoloModel? examSoloModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .93,
      height: MediaQuery.of(context).size.height * .1,
      decoration: const BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AssetsData.dollar),
            SizedBox(
              width: 10,
            ),
            CustomTextarabic(
              text: examSoloModel!.data![index].rewards.toString(),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
            Spacer(),
            CustomTextarabic(
              text: S.of(context).reward,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            Spacer(),
            CustomTextarabic(
              text: S.of(context).time,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            Spacer(),
            CustomTextarabic(
              text: examSoloModel!.data![index].examTimeInMinutes.toString(),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
            const SizedBox(
              width: 10,
            ),
            Image.asset(AssetsData.deadline),
          ],
        ),
      ),
    );
  }
}
