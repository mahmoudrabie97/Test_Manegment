import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../../../utilites/appcolors.dart';
import '../../../../utilites/widgets/custombutton.dart';

class CustomContainerwelcome2 extends StatelessWidget {
  const CustomContainerwelcome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .57,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomTextarabic(text: S.of(context).Loginorsignup),
            const SizedBox(
              height: 8,
            ),
            CustomTextarabic(text: S.of(context).Loginorcreate),
            const SizedBox(
              height: 49,
            ),
            CustomButton(
              buttonText: S.of(context).Login,
              onPressed: () {
                // context.push(LoginView());
              },
              txtColor: AppColor.whiteColor,
              buttonColor: AppColor.primary,
            ),
            const SizedBox(
              height: 28,
            ),
            CustomButton(
              buttonText: S.of(context).Createanaccount,
              onPressed: () {
                // context.push(SignUpView());
              },
              txtColor: AppColor.primary,
              buttonColor: AppColor.greyColor,
            ),
          ],
        ),
      ),
    );
  }
}
