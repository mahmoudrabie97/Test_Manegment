

import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/custommethods.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtext.dart';
import '../../../utilites/widgets/customtextformfield.dart';

class ResetPasswordMainContainer extends StatelessWidget {
   ResetPasswordMainContainer({super.key});
   final TextEditingController _ensurePasswordController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * .5,
      height: MediaQuery.of(context).size.height * .6,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19.0,vertical: 20),
        child: ListView(
          children: [
            Column(
              children: [
                CustomTextarabic(
                  text: S.of(context).resetPassword,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  // color: Color(0xff001833),
                ),
                const SizedBox(height: 8,),
                CustomTextarabic(
                  text: S.of(context).enterNewPassword,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  // color: Color(0xff001833),
                ),
                const SizedBox(height: 13,),
                CustomTextFormField(
                  hintText: S.of(context).password,

                  hinnntcolr: Colors.grey,
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  onsubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your password';
                    } else if (!isEmailValid(value)) {
                      return 'Invalid password format';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 13,),
                CustomTextFormField(
                  hintText: S.of(context).ensurepassword,

                  hinnntcolr: Colors.grey,
                  controller: _ensurePasswordController,
                  keyboardType: TextInputType.text,
                  onsubmitted: (value) {},
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your new  password';
                    } else if (!isEmailValid(value)) {
                      return 'Invalid new password format';
                    }
                    return null;
                  },
                ),




                const SizedBox(height: 40,),


                CustomButton(
                    buttonText: S.of(context).ensure,
                    onPressed: () {

                    }),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
