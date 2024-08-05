import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/code_verification_for_phone/code_verification_for_phone.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';

class ChoosingRegisterContainer extends StatelessWidget {
  const ChoosingRegisterContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextarabic(
                  text: S.of(context).doregister,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                SizedBox(
                  height: 6,
                ),
                CustomTextarabic(
                  text: S.of(context).createnewaccount,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomButton(
                    buttonText: S.of(context).byphone,
                    onPressed: () {
                      context.push(const CodeVerificationForPhneRegisterPage());
                    }),
                SizedBox(
                  height: 14,
                ),
                CustomButton(
                    buttonText: S.of(context).byemail, onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
