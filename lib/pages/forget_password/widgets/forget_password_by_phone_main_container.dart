import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/pages/forget_password/forget_password_by_email.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/constants.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtext.dart';
import '../../authPages/sign_up/sign_up_screen.dart';
import '../../code_verification_for_phone/widgets/custom_code_verification.dart';

class ForgetPasswordByPhoneMainContainer extends StatelessWidget {
   ForgetPasswordByPhoneMainContainer({super.key});


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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: MediaQuery.of(context).size.height * .5,
        height: MediaQuery.of(context).size.height * .7,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 20),
          child: Column(
            children: [
              CustomTextarabic(
                text: S.of(context).Forgetpassword,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                // color: Color(0xff001833),
              ),
              const SizedBox(height: 8,),
              CustomTextarabic(
                text: S.of(context).enterYourEmail,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                // color: Color(0xff001833),
              ),
              const SizedBox(height: 13,),
              CustomButton(
                buttonText: S.of(context).byphone,
                onPressed: () {
                  // context.push(const ForgetPasswordByPhone());
                },
                buttonColor: AppColor.primary,
                borderRadius: 20,
              ),
              const SizedBox(height: 16,),
              CustomButton(
                buttonText: S.of(context).byemail,
                onPressed: () {
                  context.push(ForgetPasswordByEmail());
                },
                buttonColor: AppColor.greyColor,
                borderRadius: 20,
              ),
              const SizedBox(height: 88,),
              CustomTextarabic(
                text: S.of(context).verificationCode,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                // color: Color(0xff001833),
              ),
              CustomTextarabic(
                text: S.of(context).sendCodeDone,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                // color: Color(0xff001833),
              ),

              CustomCodeVerification(defaulttheme: defaulttheme),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextarabic(
                    text: S.of(context).donotRecieveCode,
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(const SignUpScreen());
                    },
                    child: CustomTextarabic(
                      text: S.of(context).resend,
                      fontSize: 16,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              CustomButton(
                  buttonText: S.of(context).send,
                  onPressed: () {

                  }),

            ],
          ),
        ),
      ),
    );
  }
}
