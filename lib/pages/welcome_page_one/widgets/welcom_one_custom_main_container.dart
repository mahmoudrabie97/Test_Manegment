import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import 'custom_sub_container.dart';

class WelcomOneCustomMainContainer extends StatelessWidget {
  const WelcomOneCustomMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 14,),
            CustomTextarabic(
              text: S.of(context).Login,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            //نص اخر دورك
            Padding(
              padding: const EdgeInsets.only(right: 30.0,top: 100),
              child: Column(

                children: [
                  Row(
                    children: [
                      CustomSubContainer(
                        containerText: S.of(context).Student,//ضيف الاسم الصح
                        color: AppColor.primary,
                        image: AssetsData.student,
                      ),
                      CustomSubContainer(
                        containerText: S.of(context).welcome,//ضيف الاسم الصح
                        color: AppColor.lightGreenColor,
                        image: AssetsData.parent,
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      CustomSubContainer(
                        containerText: S.of(context).Teached,//ضيف الاسم الصح
                        color: AppColor.pinkLight,
                        image: AssetsData.father,
                      ),
                      CustomSubContainer(
                        containerText: S.of(context).School,//ضيف الاسم الصح
                        color: AppColor.braon,
                        image: AssetsData.young,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * .75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColor.whiteColor,
        ),
      ),
    );
  }
}
