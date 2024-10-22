import 'package:flutter/material.dart';
import 'package:test_mangement/models/challenge_ui_model.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../utilites/appcolors.dart';
import 'home_page_custom_text_button.dart';

class CustomChallangeContainer extends StatelessWidget {
  const CustomChallangeContainer(
      {super.key, required this.challengeUiModel, required this.index});
  final ChallengeUiModel challengeUiModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 10, right: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * .94,
        height: MediaQuery.of(context).size.height * .3,
        decoration: BoxDecoration(
          color: const Color(0xff59B1EB),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextarabic(
                            text: challengeUiModel.title,
                            color: AppColor.whiteColor,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: CustomTextarabic(
                                text: challengeUiModel.sutitle,
                                color: AppColor.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.white.withOpacity(.1),
                      child: Image.asset(
                        challengeUiModel.image,
                        width: 250,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                // Spacer(),
                // CustomSmallWhiteContainer(
                //   text: '60',
                // ),
                // CustomSmallWhiteContainer(
                //   text: '66',
                // ),
                // CustomSmallWhiteContainer(
                //   text: '1',
                // ),
                // Spacer(),
              ],
            ),
            const HomePageCustomTextButton(),
          ],
        ),
      ),
    );
  }
}
