import 'package:flutter/material.dart';
import 'package:test_mangement/pages/my_card/my_card_page.dart';
import 'package:test_mangement/pages/payment_method/widgets/payment_custom_radio_button.dart';
import 'package:test_mangement/utilites/extentionhelper.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/widgets/custombutton.dart';
import '../../../utilites/widgets/customtext.dart';
import '../payment_method_page.dart';

class PaymentCustomMainContainer extends StatelessWidget {
  const PaymentCustomMainContainer({super.key});

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
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Column(
          children: [
            CustomTextarabic(
              text: S.of(context).choosePaymentMethod,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(
              height: 12,
            ),
            const PaymentCutomRadioButton(),
            const SizedBox(
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: CustomButton(
                buttonText: S.of(context).addition,
                onPressed: () {
                  context.push(MyCardPage());
                },
                borderRadius: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}