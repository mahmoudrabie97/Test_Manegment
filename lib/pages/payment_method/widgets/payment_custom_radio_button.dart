


import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../../utilites/appcolors.dart';
import '../../../utilites/assets.dart';
import '../../../utilites/widgets/customtext.dart';

enum SingingCharacter { credit, payPal, applePay }

class PaymentCutomRadioButton extends StatefulWidget {
  const PaymentCutomRadioButton({super.key});

  @override
  State<PaymentCutomRadioButton> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<PaymentCutomRadioButton> {
  SingingCharacter? _character = SingingCharacter.credit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * .76,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: AppColor.greyColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset(AssetsData.visa),
                SizedBox(
                  width: 25,
                ),
                CustomTextarabic(
                  text: S.of(context).creditCard,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
                Spacer(),
                Radio<SingingCharacter>(
                  value: SingingCharacter.credit,
                  groupValue: _character,
                  activeColor: AppColor.primary,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .76,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: AppColor.greyColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset(AssetsData.payPal),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'PayPal',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Radio<SingingCharacter>(
                  value: SingingCharacter.payPal,
                  groupValue: _character,
                  activeColor: AppColor.primary,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .76,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: AppColor.greyColor),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Image.asset(AssetsData.apple),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Apple Pay',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                Radio<SingingCharacter>(
                  value: SingingCharacter.applePay,
                  groupValue: _character,
                  activeColor: AppColor.primary,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}