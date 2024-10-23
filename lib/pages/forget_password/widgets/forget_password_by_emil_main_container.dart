import 'package:flutter/material.dart';

import 'package:test_mangement/pages/authPages/sign_up/sign_up_screen.dart';
import 'package:test_mangement/pages/forget_password/reset_password_page.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/custommethods.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtext.dart';
import '../../../utilites/widgets/customtextformfield.dart';
import '../../code_verification_for_phone/widgets/custom_code_verification.dart';

class ForgetPasswordByEmailMainContainer extends StatelessWidget {
  ForgetPasswordByEmailMainContainer({super.key});

  final TextEditingController _emailController = TextEditingController();

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
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
          child: Column(
            children: [
              CustomTextarabic(
                text: S.of(context).Forgetpassword,
                fontSize: 22,
                fontWeight: FontWeight.w700,
                // color: Color(0xff001833),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextarabic(
                text: S.of(context).enterYourEmail,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                // color: Color(0xff001833),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                hintText: S.of(context).email,
                perfixicon: Icons.email_outlined,
                hinnntcolr: Colors.grey,
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onsubmitted: (value) {},
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your email';
                  } else if (!isEmailValid(value)) {
                    return 'Invalid email format';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 60,
              ),
              CustomButton(buttonText: S.of(context).send, onPressed: () {
                context.push(ResetPasswordPage());

              }),
              const SizedBox(
                height: 25,
              ),
              Row(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextarabic(
                    text: S.of(context).Donothaveacountregister,
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push(const SignUpScreen());
                    },
                    child: CustomTextarabic(
                      text: S.of(context).register,
                      fontSize: 16,
                      color: AppColor.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
