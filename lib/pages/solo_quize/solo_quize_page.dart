import 'package:flutter/material.dart';

import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_appbar.dart';
import 'package:test_mangement/pages/solo_quize/widgets/custom_solo_quize_main_container.dart';

import '../../generated/l10n.dart';
import '../../utilites/appcolors.dart';
import '../../utilites/assets.dart';
import '../../utilites/widgets/customtext.dart';

class SoloQuizePage extends StatelessWidget {
  const SoloQuizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const CustomsoloQuizeAppBar(),
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SoloQuizeChooseContainer(
                  color: AppColor.greenColor,
                  image: AssetsData.sport,
                  text: S.of(context).verabalQuize,
                ),
                SoloQuizeChooseContainer(
                  color: AppColor.pink,
                  image: AssetsData.manyQuestions,
                  text: S.of(context).quantitiveQuize,

                ),
                SoloQuizeChooseContainer(
                  color: AppColor.braon,
                  image: AssetsData.choose,
                  text: S.of(context).differentTest,

                ),


              ],
            ),
            const CustomSoloQuizeMainContainer(),
          ],
        ),
      ),
    );
  }
}

class SoloQuizeChooseContainer extends StatelessWidget {
  const SoloQuizeChooseContainer(
      {super.key,
      required this.color,
      required this.image,
      required this.text, });

  final Color color;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(7),topRight:Radius.circular(7),
      ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 4.0,top: 3),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(width: 8,),
            CustomTextarabic(
              text: text,
              fontWeight: FontWeight.w500,
              fontSize: 10,
              color: AppColor.whiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
