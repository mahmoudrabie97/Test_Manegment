import 'package:flutter/material.dart';
import 'package:test_mangement/models/one_to_one_quize_model.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class CustomOneToOneSubcontainerTimer extends StatelessWidget {
  const CustomOneToOneSubcontainerTimer({
    super.key,
    required this.oneToOneQuizeModel,
    required this.index,
  });
  final OneToOneQuizeModel? oneToOneQuizeModel;
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
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AssetsData.accept),
            SizedBox(
              width: 14,
            ),
            CustomTextarabic(
              text: oneToOneQuizeModel!.data![index].rewards.toString(),
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
            SizedBox(
              width: 10,
            ),
            CustomTextarabic(
              text: S.of(context).question,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),


          ],
        ),
      ),
    );
  }
}
