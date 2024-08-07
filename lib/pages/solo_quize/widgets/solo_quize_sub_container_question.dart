import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';

class SoloQuizeSubContainerQuestion extends StatelessWidget {
  const SoloQuizeSubContainerQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .93,
      height: MediaQuery.of(context).size.height * .1,
      decoration: const BoxDecoration(
        color: AppColor.lightBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 2),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: AppColor.primary,//channnnnnnnnnnge
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.whiteColor,
                    )),
              ),
            ),
            Spacer(),
            CustomTextarabic(
              text: '10',
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            CustomTextarabic(
              text: S.of(context).questions,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            SizedBox(width: 10,),
            Image.asset(AssetsData.accept),
          ],
        ),
      ),
    );
  }
}
