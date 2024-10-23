
import 'package:flutter/material.dart';
import 'package:test_mangement/cubit/authcubit/authcubit.dart';
import 'package:test_mangement/pages/forget_password/forget_password_by_phone.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtext.dart';
import '../forget_password_by_email.dart';

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
                  context.push(const ForgetPasswordByPhone());
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