import 'package:flutter/material.dart';
import 'package:test_mangement/models/challenge_ui_model.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_challange_container.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_column_text.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_home_page_main_container.dart';
import 'package:test_mangement/pages/home_page/widgets/custom_row_info.dart';
import 'package:test_mangement/pages/home_page/widgets/home_page_sub_container.dart';
import 'package:test_mangement/pages/solo_quize/solo_quize_page.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomRowInfo(),
              CustomHomePageSubContainer(
                color: const Color(0xffFF6DAA),
                customWidget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetsData.star,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const SizedBox(
                            child: CustomTextarabic(
                              text: '1234 نقطة',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetsData.login,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                          const CustomTextarabic(
                            text: 'المستوي الرابع',
                            color: Colors.white,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            AssetsData.frameAccept,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const CustomTextarabic(
                            text: "التقدم",
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 240,
                  child: ListView.separated(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomChallangeContainer(
                        challengeUiModel: challengelist[index],
                        index: index,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 8,
                      );
                    },
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SoloQuizeChooseContainer(
                      color: AppColor.pink,
                      image: AssetsData.manyQuestions,
                      text: "قدرات"),
                  SoloQuizeChooseContainer(
                    color: AppColor.greenColor,
                    image: AssetsData.sport,
                    text: "تحصيلي",
                  ),
                ],
              ),
              const CustomHomePageMainContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
