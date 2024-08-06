import 'package:flutter/material.dart';
import 'package:test_mangement/pages/home_page/widgets/home_page_sub_container.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import 'home_page_ietm_sub_container.dart';

class CustomHomePageMainContainer extends StatelessWidget {
  const CustomHomePageMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .45,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
          child: Column(
            children: [
              CustomTextarabic(
                text: S.of(context).Explorecategories,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              CustomHomePageSubContainer(
                color: AppColor.purple,
                customWidget: HomePageIetmSubContainer(
                  image: AssetsData.choose,

                  text: S.of(context).randomquiz,
                ),
              ),
              CustomHomePageSubContainer(
                color: AppColor.greenColor,
                customWidget: HomePageIetmSubContainer(
                  image: AssetsData.sport,
                  text: S.of(context).Askhimverbally,
                ),
              ),
              CustomHomePageSubContainer(
                color: AppColor.pinkLight,
                customWidget: HomePageIetmSubContainer(
                  image: AssetsData.manyQuestions,

                  text: S.of(context).Quantitativequestions,
                ),
              ),

            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
      ),
    );
  }
}


