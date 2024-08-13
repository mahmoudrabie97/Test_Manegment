





import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtext.dart';
import '../../../utilites/widgets/customtextformfield.dart';

class MyCardCustomMainContainer extends StatelessWidget {
  MyCardCustomMainContainer({super.key});
  final TextEditingController _cardNumberController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  final FocusNode field1 = FocusNode();
  final FocusNode field2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .85,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AssetsData.visaCard),
            CustomTextarabic(
              text: S.of(context).cardNumber,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            CustomTextFormField(
              hintText: '0000000000000',

              hinnntcolr: Colors.grey,
              controller: _cardNumberController,
              keyboardType: TextInputType.emailAddress,
              focusnode: field1,
              onsubmitted: (value) {
                FocusScope.of(context).requestFocus(field2);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter your identity';
                }
                // else if (!isEmailValid(value)) {
                //   return 'Invalid email format';
                // }
                return null;
              },
            ),
            CustomTextarabic(
              text: S.of(context).nameHolderCard,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            CustomTextFormField(
              hintText: 'ايناس عمر ',

              hinnntcolr: Colors.grey,
              controller: _cardNumberController,
              keyboardType: TextInputType.emailAddress,
              focusnode: field1,
              onsubmitted: (value) {
                FocusScope.of(context).requestFocus(field2);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter your identity';
                }
                // else if (!isEmailValid(value)) {
                //   return 'Invalid email format';
                // }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 44.0,top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  CustomTextarabic(
                    text:'تاريخ انتهاء الصلاحية',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  Spacer(),
                  CustomTextarabic(
                    text:'CVV/CVC',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),

                  SizedBox(width: 19,),
                  Image.asset(AssetsData.hint),
                ],
              ),
            ),
            Row(
              children: [
                Flexible(
                  child: CustomTextFormField(
                    hintText: 'ش/س س س س',

                    hinnntcolr: Colors.grey,
                    controller: _cardNumberController,
                    keyboardType: TextInputType.emailAddress,
                    focusnode: field1,
                    onsubmitted: (value) {
                      FocusScope.of(context).requestFocus(field2);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your identity';
                      }
                      // else if (!isEmailValid(value)) {
                      //   return 'Invalid email format';
                      // }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 30,),
                Flexible(
                  child: CustomTextFormField(
                    hintText: '3-4 أرقام',

                    hinnntcolr: Colors.grey,
                    controller: _cardNumberController,
                    keyboardType: TextInputType.emailAddress,
                    focusnode: field1,
                    onsubmitted: (value) {
                      FocusScope.of(context).requestFocus(field2);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your identity';
                      }
                      // else if (!isEmailValid(value)) {
                      //   return 'Invalid email format';
                      // }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            CustomButton(
              buttonText: S.of(context).pushNow,
              onPressed: () {},
              borderRadius: 10,
            ),
          ],
        ),
      ),
    );
  }
}