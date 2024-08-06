import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/styles.dart';
import 'custom_small_white_container.dart';
import 'home_page_custom_text_button.dart';

class CustomChallangeContainer extends StatelessWidget {
  const CustomChallangeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .92,
        height: MediaQuery.of(context).size.height * .2,
        child: Column(
          children: [
            CustomTextarabic(
              text: S.of(context).Participatefriendsorotherplayers,
              color: AppColor.whiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            Row(
              children: [
                Spacer(),
                CustomSmallWhiteContainer(
                  text: '60',
                ),
                CustomSmallWhiteContainer(
                  text: '66',
                ),
                CustomSmallWhiteContainer(
                  text: '1',
                ),
                Spacer(),
              ],
            ),
            HomePageCustomTextButton(),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
