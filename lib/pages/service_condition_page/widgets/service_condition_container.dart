import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/chhosing_regiter_metod_page/choosing_register_method_page.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class ServiceConditionContainer extends StatelessWidget {
  const ServiceConditionContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextarabic(
              text: S.of(context).agreement,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextarabic(
              text: S.of(context).TermsofService,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextarabic(
              text: S.of(context).lastupdatse,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextarabic(
              text: S.of(context).ietm1,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextarabic(
              text: S.of(context).text1,
              fontSize: 14,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextarabic(
              text: S.of(context).ietm2,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            const SizedBox(
              height: 7,
            ),
            CustomTextarabic(
              text: S.of(context).text2,
              fontSize: 14,
            ),
            const Spacer(),
            CustomButton(
                buttonText: S.of(context).agreeandfollow,
                onPressed: () {
                  context.push(ChoosingRegisterMethodPage());
                }),
          ],
        ),
      ),
    );
  }
}
