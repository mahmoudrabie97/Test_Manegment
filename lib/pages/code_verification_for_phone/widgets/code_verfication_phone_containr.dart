import 'package:flutter/material.dart';
import 'package:test_mangement/generated/l10n.dart';
import 'package:test_mangement/pages/code_verification_for_phone/widgets/custom_code_verification.dart';
import 'package:test_mangement/utilites/appcolors.dart';
import 'package:test_mangement/utilites/widgets/custombutton.dart';
import 'package:test_mangement/utilites/widgets/customtext.dart';
import 'package:pinput/pinput.dart';

class CodeVerificationPhoneRegisterContainer extends StatelessWidget {
  CodeVerificationPhoneRegisterContainer({
    super.key,
  });
  final defaulttheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.transparent)));
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextarabic(
                text: S.of(context).verificationcode,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
              const SizedBox(
                height: 6,
              ),
              CustomTextarabic(
                text: S.of(context).sendverivicationcodetoyou,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 14,
              ),
              const SizedBox(
                height: 14,
              ),
              CustomCodeVerification(defaulttheme: defaulttheme),
              CustomButton(buttonText: S.of(context).send, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
