import 'package:flutter/material.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/assets.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

import '../../generated/l10n.dart';
import '../../utilites/widgets/custombutton.dart';

class ForgetPassordPage extends StatelessWidget {
  const ForgetPassordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: AppColor.whiteColor,
              ),
            ),
            Center(
              child: Image.asset(AssetsData.scroll),
            ),
            const ForgetPasswordMainContainer(),
          ],
        ),
      ),
    );
  }
}

class ForgetPasswordMainContainer extends StatelessWidget {
  const ForgetPasswordMainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: MediaQuery.of(context).size.height * .5,
        height: MediaQuery.of(context).size.height * .5,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 80),
          child: Column(
            children: [
              CustomTextarabic(
                text: S.of(context).Forgetpassword,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                // color: Color(0xff001833),
              ),
              SizedBox(height: 8,),
              CustomTextarabic(
                text: S.of(context).enterYourEmail,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                // color: Color(0xff001833),
              ),
              SizedBox(height: 13,),
              CustomButton(
                buttonText: S.of(context).byphone,
                onPressed: () {
                },
                buttonColor: AppColor.primary,
                borderRadius: 20,
              ),
              SizedBox(height: 16,),
              CustomButton(
                buttonText: S.of(context).byemail,
                onPressed: () {
                },
                buttonColor: AppColor.primary,
                borderRadius: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
